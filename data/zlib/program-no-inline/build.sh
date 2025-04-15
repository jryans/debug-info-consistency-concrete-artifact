#!/usr/bin/env bash
set -eux

# Expects to run from program source directory
if [ "${PWD##*/}" != "zlib" ]; then
  echo "Does not appear to be the expected directory, abort!"
  exit
fi

SCRIPT_DIR=$(dirname "${BASH_SOURCE[0]}")
source "${SCRIPT_DIR}/../../vars.sh"

export LLVM_COMPILER="clang"
export LLVM_COMPILER_PATH="$(llvm release-clang-lldb-13.0.0)/bin"

TARGET_NAME="example"
TARGET_PATH="${TARGET_NAME}"

# Clang

#   levels=(O0 O1 O2 O0 O1)
# versions=(13 13 13 18 18)
  levels=(O0)
versions=(13)

for i in ${!levels[*]}; do
  level=${levels[$i]}
  version=${versions[$i]}

  echo "## Building \`${TARGET_NAME}\` (Clang ${version}, ${level}) for bitcode"

  make clean
  git clean -f

  ## Build via bitcode collection wrapper
  cc_level_opts="CC_${level}_OPTS"
  CC=wllvm \
    CFLAGS="${CC_COMMON_OPTS} ${CC_CLANG_OPTS} ${!cc_level_opts} -fno-inline" \
    ./configure
  make

  ## Extract bitcode
  extract-bc ${TARGET_PATH}
  mkdir -p "${SCRIPT_DIR}/clang/${version}/${level}"
  cp \
    ${TARGET_PATH}.bc \
    "${SCRIPT_DIR}/clang/${version}/${level}/${TARGET_NAME}.bc"

  ## Disassemble bitcode for debugging
  $(llvm release-clang-lldb-${version}.0.0 llvm-dis) \
    "${SCRIPT_DIR}/clang/${version}/${level}/${TARGET_NAME}.bc"

  # Collect function attributes when building O0
  if [ "${level}" = "O0" ]; then
    echo "## Analysing \`${TARGET_NAME}\` (Clang ${version}, ${level}) function attributes"

    mkdir -p "${SCRIPT_DIR}/clang/${version}/${level}-function-attrs"

    $(llvm release-clang-lldb-${version}.0.0 opt) \
      -o "${SCRIPT_DIR}/clang/${version}/${level}-function-attrs/${TARGET_NAME}.bc" \
      -passes=function-attrs \
      "${SCRIPT_DIR}/clang/${version}/${level}/${TARGET_NAME}.bc"

    ## Disassemble bitcode for debugging
    $(llvm release-clang-lldb-${version}.0.0 llvm-dis) \
      "${SCRIPT_DIR}/clang/${version}/${level}-function-attrs/${TARGET_NAME}.bc"
  fi

  echo "## Building \`${TARGET_NAME}\` (Clang ${version}, ${level}) for binary with debug info"

  make clean
  git clean -f

  # JRS: For some reason, even though the wrapped steps above do produce a
  # linked, native binary, it does _not_ contain debug info, at least on macOS.
  # For now, work around this by building again normally.

  ## Build for binary with debug info
  cc_level_opts="CC_${level}_OPTS"
  CC="$(llvm release-clang-lldb-${version}.0.0 clang)" \
    CFLAGS="${CC_COMMON_OPTS} ${CC_CLANG_OPTS} ${!cc_level_opts} -fno-inline -fsave-optimization-record" \
    LDFLAGS="${LD_COMMON_OPTS}" \
    ./configure
  make

  mkdir -p "${SCRIPT_DIR}/clang/${version}/${level}"

  ## Collect optimisation remarks
  ( \
    find . -name '*.opt.yaml' | \
    xargs cat \
    > "${SCRIPT_DIR}/clang/${version}/${level}/${TARGET_NAME}.opt.yaml" \
  )

  ## Gather debug info
  dsymutil --flat "${TARGET_PATH}"
  cp \
    "${TARGET_PATH}.dwarf" \
    "${SCRIPT_DIR}/clang/${version}/${level}/${TARGET_NAME}.dwarf"

  ## Store program binary
  cp \
    ${TARGET_PATH} \
    "${SCRIPT_DIR}/clang/${version}/${level}/${TARGET_NAME}"
done

# # GCC

#   levels=(O0 O1 O2 O0 O1)
# versions=(11 11 11 14 14)

# for i in ${!levels[*]}; do
#   version=${versions[$i]}
#   level=${levels[$i]}

#   echo "## Building \`${TARGET_NAME}\` (GCC ${version}, ${level}) for binary with debug info"

#   make clean
#   git clean -f

#   ## Build for binary with debug info
#   cc_level_opts="CC_${level}_OPTS"
#     CC="gcc-${version}" \
#     CFLAGS="${CC_COMMON_OPTS} ${CC_GCC_OPTS} ${!cc_level_opts} -fno-inline" \
#     LDFLAGS="${LD_COMMON_OPTS}" \
#     ./configure
#   make

#   mkdir -p "${SCRIPT_DIR}/gcc/${version}/${level}"

#   # TODO: Try GCC's version of `-fsave-optimization-record`
#   # ## Collect optimisation remarks
#   # ( \
#   #   find . -name '*.opt-record.json.gz' | \
#   #   xargs cat \
#   #   > "${SCRIPT_DIR}/gcc/${version}/${level}/${TARGET_NAME}.opt-record.json.gz" \
#   # )

#   ## Gather debug info
#   dsymutil --flat "${TARGET_PATH}"
#   cp \
#     "${TARGET_PATH}.dwarf" \
#     "${SCRIPT_DIR}/gcc/${version}/${level}/${TARGET_NAME}.dwarf"

#   ## Store program binary
#   cp \
#     ${TARGET_PATH} \
#     "${SCRIPT_DIR}/gcc/${version}/${level}/${TARGET_NAME}"
# done

# Cleanup
echo "## Cleanup"
make clean
git clean -f
