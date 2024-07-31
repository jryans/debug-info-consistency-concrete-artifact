set -eux

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

CC_SYSROOT_OPTS="--sysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk"
CC_COMMON_OPTS="${CC_SYSROOT_OPTS} -g"
CC_CLANG_OPTS="-fno-discard-value-names -Xclang -disable-O0-optnone"
CC_GCC_OPTS="-gdwarf-4"
CC_O0_OPTS=""
CC_O1_OPTS="-O1"
CC_O2_OPTS="-O2"
CC_O3_OPTS="-O3"
CC_Og_OPTS="-Og"
CC_LV_OPTS="${CC_Og_OPTS} -gvariable-location-views"

LD_COMMON_OPTS="-Wl,-no_pie"

KLEE=$(klee release-debug klee)
KLEE_COMMON_OPTS="--use-color=false --debug-execution-trace --disable-verify --output-source --search=random-path"

SYM_CHECK=$(klee release-debug check-debug-info)
SYM_CHECK_OPTS="--debug-only=check-debug-info,values-collector,variable --debug-execution-trace --disable-verify --output-stats=false --max-forks=32 --max-solver-time=5s --max-time=5s --search=random-path --tsv"

CON_COLLECT_DEBUGGER="${HOME}/Projects/debug-info-concrete-check/debugger/collect_trace.py"
CON_COLLECT_INSTRUMENTATION="${HOME}/Projects/debug-info-concrete-check/binary-instrumentation/build/libcollect-trace-preload.dylib"
