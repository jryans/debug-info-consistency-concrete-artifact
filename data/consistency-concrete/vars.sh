SCRIPT_DIR=$(dirname "${BASH_SOURCE[0]}")

UNAME=`uname`

if [[ "$UNAME" == 'Darwin' ]]; then
  OS="mac"
else
  OS="linux"
fi

gcc() {
  local build=${1}
  local version=${2}
  local program=${3:-}
  if [ -n "${BUNDLED:-}" ]; then
    echo "${SCRIPT_DIR}/../../compilers/gcc/${version}/bin/${program}"
    return
  fi
  if [ -z "${program}" ]; then
    echo "${HOME}/Projects/GNU/gcc/builds/${build}-${version}"
    return
  fi
  echo "${HOME}/Projects/GNU/gcc/builds/${build}-${version}/bin/${program}"
}

llvm() {
  local build=${1}
  local version=${2}
  local program=${3:-}
  if [ -n "${BUNDLED:-}" ]; then
    echo "${SCRIPT_DIR}/../../compilers/clang/${version}/bin/${program}"
    return
  fi
  if [ -z "${program}" ]; then
    echo "${HOME}/Projects/LLVM/llvm/builds/${build}-${version}"
    return
  fi
  echo "${HOME}/Projects/LLVM/llvm/builds/${build}-${version}/bin/${program}"
}

if [[ "$OS" == 'mac' ]]; then
  CC_SYSROOT_OPTS="--sysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk"
else
  CC_SYSROOT_OPTS="-isystem /nix/store/yg4ahy7gahx91nq80achmzilrjyv0scj-gcc-13.3.0/include/c++/13.3.0 -isystem /nix/store/yg4ahy7gahx91nq80achmzilrjyv0scj-gcc-13.3.0/include/c++/13.3.0/x86_64-unknown-linux-gnu -B/nix/store/maxa3xhmxggrc5v2vc0c3pjb79hjlkp9-glibc-2.40-66/lib/ -idirafter /nix/store/81awch8mhqanda1vy0c09bflgra4cxh0-glibc-2.40-66-dev/include -B/nix/store/yg4ahy7gahx91nq80achmzilrjyv0scj-gcc-13.3.0/lib/gcc/x86_64-unknown-linux-gnu/13.3.0 -B/nix/store/w9mcn0hi97xp5m9ds5nsc4cr99qspz9h-clang-18.1.8-lib/lib ${NIX_CFLAGS_COMPILE}"
  if [ -n "${BUNDLED:-}" ]; then
    CC_SYSROOT_OPTS="${CC_SYSROOT_OPTS} -B/nix/store/hw7m1zkrmb6mcl8m37307b5x8w4rb39s-clang-18.1.8-lib/lib"
  fi
fi
CC_COMMON_OPTS="${CC_SYSROOT_OPTS} -g -fno-pie"
CC_CLANG_OPTS="-fno-discard-value-names -Xclang -disable-O0-optnone"
if [[ "$OS" == 'linux' ]]; then
  CC_CLANG_OPTS="${CC_CLANG_OPTS} --gcc-toolchain=/nix/store/yg4ahy7gahx91nq80achmzilrjyv0scj-gcc-13.3.0 -resource-dir=/nix/store/c6mlpw8bb0n9rc38hihmy0zzc1w81ljr-clang-wrapper-18.1.8/resource-root"
  if [ -n "${BUNDLED:-}" ]; then
    CC_CLANG_OPTS="${CC_CLANG_OPTS} -resource-dir=/nix/store/xwvbfr85irhsp6xpd02v150gna14zphz-clang-wrapper-18.1.8/resource-root"
  fi
fi

CC_GCC_OPTS=""
if [[ "$OS" == 'mac' ]]; then
  CC_GCC_OPTS="-gdwarf-4 -gno-strict-dwarf"
fi
CC_O0_OPTS=""
CC_O1_OPTS="-O1"
CC_O2_OPTS="-O2"
CC_O3_OPTS="-O3"
CC_Og_OPTS="-Og"
CC_LV_OPTS="${CC_Og_OPTS} -gvariable-location-views"

LD_SYSROOT_OPTS=""
if [[ "$OS" == 'linux' ]]; then
  LD_SYSROOT_OPTS="-Wl,-dynamic-linker=/nix/store/maxa3xhmxggrc5v2vc0c3pjb79hjlkp9-glibc-2.40-66/lib/ld-linux-x86-64.so.2 -L/nix/store/yg4ahy7gahx91nq80achmzilrjyv0scj-gcc-13.3.0/lib/gcc/x86_64-unknown-linux-gnu/13.3.0 -L/nix/store/mhd0rk497xm0xnip7262xdw9bylvzh99-gcc-13.3.0-lib/lib -L/nix/store/yg4ahy7gahx91nq80achmzilrjyv0scj-gcc-13.3.0/lib -L/nix/store/czlhi3r9b6ip4xyynwibfhm458ljwsir-gcc-13.3.0-libgcc/lib -L/nix/store/w9mcn0hi97xp5m9ds5nsc4cr99qspz9h-clang-18.1.8-lib/lib ${NIX_LDFLAGS/-rpath*\/out\/lib/}"
  if [ -n "${BUNDLED:-}" ]; then
    LD_SYSROOT_OPTS="${LD_SYSROOT_OPTS} -L/nix/store/hw7m1zkrmb6mcl8m37307b5x8w4rb39s-clang-18.1.8-lib/lib"
  fi
fi
if [[ "$OS" == 'mac' ]]; then
  LD_COMMON_OPTS="${LD_SYSROOT_OPTS} -Wl,-no_pie"
else
  LD_COMMON_OPTS="${LD_SYSROOT_OPTS} -Wl,-no-pie"
fi

LLDB_PYTHON_MODULES="$(llvm release-clang-lld-lldb 17.0.6)/lib/python3.12/site-packages"
LLDB_PYTHON="python3.12"

CON_COLLECT_DEBUGGER="${HOME}/Projects/debug-info-concrete-check/debugger/collect_trace.py"
if [[ "$OS" == 'mac' ]]; then
  CON_COLLECT_INSTRUMENTATION="DYLD_INSERT_LIBRARIES=${HOME}/Projects/debug-info-concrete-check/binary-instrumentation/build/libcollect-trace-preload.dylib"
else
  CON_COLLECT_INSTRUMENTATION="LD_PRELOAD=${HOME}/Projects/debug-info-concrete-check/binary-instrumentation/build/libcollect-trace-preload.so"
fi

CON_TRACE_default_OPTS="CON_TRACE_SOURCE=1"
CON_TRACE_rfld_OPTS="CON_TRACE_RF_LOCATION=0"
CON_TRACE_ld_OPTS="CON_TRACE_LOCATION=0"
CON_TRACE_eld_OPTS="CON_TRACE_EXTERNAL_LIBRARY=0"
CON_TRACE_ld_eld_OPTS="CON_TRACE_LOCATION=0 CON_TRACE_EXTERNAL_LIBRARY=0"
CON_TRACE_ld_eld_ifd_OPTS="CON_TRACE_LOCATION=0 CON_TRACE_EXTERNAL_LIBRARY=0 CON_TRACE_INTERNAL_FUNCTION=0"

CON_FILTER_TRACE_MEMORY_EFFECTS="${HOME}/Projects/debug-info-concrete-check/filter-trace/build/filter-trace-memory-effects"

CON_COMPARE="${HOME}/Projects/debug-info-concrete-check/compare-traces/target/release/debug-info-concrete-compare-traces"
