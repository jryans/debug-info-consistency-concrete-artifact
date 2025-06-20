UNAME=`uname`

if [[ "$UNAME" == 'Darwin' ]]; then
  OS="mac"
else
  OS="linux"
fi

llvm() {
  local build=${1}
  local program=${2:-}
  if [ -z "${program}" ]; then
    echo "${HOME}/Projects/LLVM/llvm/builds/${build}"
    return
  fi
  echo "${HOME}/Projects/LLVM/llvm/builds/${build}/bin/${program}"
}

klee() {
  local build=$1
  local program=$2
  local program=${2:-}
  if [ -z "${program}" ]; then
    echo "${HOME}/Projects/klee/build-${build}"
    return
  fi
  echo "${HOME}/Projects/klee/build-${build}/bin/${program}"
}

if [[ "$OS" == 'mac' ]]; then
  CC_SYSROOT_OPTS="--sysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk"
else
  CC_SYSROOT_OPTS="-B/nix/store/maxa3xhmxggrc5v2vc0c3pjb79hjlkp9-glibc-2.40-66/lib/ -idirafter /nix/store/81awch8mhqanda1vy0c09bflgra4cxh0-glibc-2.40-66-dev/include -B/nix/store/yg4ahy7gahx91nq80achmzilrjyv0scj-gcc-13.3.0/lib/gcc/x86_64-unknown-linux-gnu/13.3.0 --gcc-toolchain=/nix/store/yg4ahy7gahx91nq80achmzilrjyv0scj-gcc-13.3.0 -B/nix/store/w9mcn0hi97xp5m9ds5nsc4cr99qspz9h-clang-18.1.8-lib/lib -resource-dir=/nix/store/c6mlpw8bb0n9rc38hihmy0zzc1w81ljr-clang-wrapper-18.1.8/resource-root ${NIX_CFLAGS_COMPILE}"
fi
CC_COMMON_OPTS="${CC_SYSROOT_OPTS} -g"
CC_CLANG_OPTS="-fno-discard-value-names -Xclang -disable-O0-optnone"
CC_GCC_OPTS="-gdwarf-4 -gno-strict-dwarf"
CC_O0_OPTS=""
CC_O1_OPTS="-O1"
CC_O2_OPTS="-O2"
CC_O3_OPTS="-O3"
CC_Og_OPTS="-Og"
CC_LV_OPTS="${CC_Og_OPTS} -gvariable-location-views"

if [[ "$OS" == 'mac' ]]; then
  LD_SYSROOT_OPTS=""
else
  LD_SYSROOT_OPTS="-Wl,-dynamic-linker=/nix/store/maxa3xhmxggrc5v2vc0c3pjb79hjlkp9-glibc-2.40-66/lib/ld-linux-x86-64.so.2 -L/nix/store/yg4ahy7gahx91nq80achmzilrjyv0scj-gcc-13.3.0/lib/gcc/x86_64-unknown-linux-gnu/13.3.0 -L/nix/store/mhd0rk497xm0xnip7262xdw9bylvzh99-gcc-13.3.0-lib/lib -L/nix/store/yg4ahy7gahx91nq80achmzilrjyv0scj-gcc-13.3.0/lib -L/nix/store/czlhi3r9b6ip4xyynwibfhm458ljwsir-gcc-13.3.0-libgcc/lib -L/nix/store/w9mcn0hi97xp5m9ds5nsc4cr99qspz9h-clang-18.1.8-lib/lib ${NIX_LDFLAGS/-rpath/-Wl,-rpath}"
fi
if [[ "$OS" == 'mac' ]]; then
  LD_COMMON_OPTS="${LD_SYSROOT_OPTS} -Wl,-no_pie"
else
  LD_COMMON_OPTS="${LD_SYSROOT_OPTS}"
fi

KLEE=$(klee release-debug klee)
KLEE_COMMON_OPTS="--use-color=false --debug-execution-trace --disable-verify --output-source --search=random-path"

SYM_CHECK=$(klee release-debug check-debug-info)
SYM_CHECK_OPTS="--debug-only=check-debug-info,values-collector,variable --debug-execution-trace --disable-verify --output-stats=false --max-forks=32 --max-solver-time=5s --max-time=5s --search=random-path --tsv"

LLDB_PYTHON_MODULES="$(llvm release-clang-lld-lldb-17.0.6)/lib/python3.12/site-packages"
LLDB_PYTHON="python3.12"

CON_COLLECT_DEBUGGER="${HOME}/Projects/debug-info-concrete-check/debugger/collect_trace.py"
if [[ "$OS" == 'mac' ]]; then
  CON_COLLECT_INSTRUMENTATION="DYLD_INSERT_LIBRARIES=${HOME}/Projects/debug-info-concrete-check/binary-instrumentation/build/libcollect-trace-preload.dylib"
else
  CON_COLLECT_INSTRUMENTATION="LD_PRELOAD=${HOME}/Projects/debug-info-concrete-check/binary-instrumentation/build/libcollect-trace-preload.so"
fi

CON_TRACE_default_OPTS=""
CON_TRACE_rfld_OPTS="CON_TRACE_RF_LOCATION=0"
CON_TRACE_ld_OPTS="CON_TRACE_LOCATION=0"
CON_TRACE_eld_OPTS="CON_TRACE_EXTERNAL_LIBRARY=0"
CON_TRACE_ld_eld_OPTS="CON_TRACE_LOCATION=0 CON_TRACE_EXTERNAL_LIBRARY=0"
CON_TRACE_ld_eld_ifd_OPTS="CON_TRACE_LOCATION=0 CON_TRACE_EXTERNAL_LIBRARY=0 CON_TRACE_INTERNAL_FUNCTION=0"

CON_FILTER_TRACE_MEMORY_EFFECTS="${HOME}/Projects/debug-info-concrete-check/filter-trace/build/filter-trace-memory-effects"

CON_COMPARE="${HOME}/Projects/debug-info-concrete-check/compare-traces/target/release/debug-info-concrete-compare-traces"
