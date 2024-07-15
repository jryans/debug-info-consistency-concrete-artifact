#!/usr/bin/env bash
set -eux

# Expects to run from program source directory
if [ "${PWD##*/}" != "git" ]; then
  echo "Does not appear to be the expected directory, abort!"
  exit
fi

SCRIPT_DIR=$(dirname "${BASH_SOURCE[0]}")
source "${SCRIPT_DIR}/../../vars.sh"

export LLVM_COMPILER="clang"
export LLVM_COMPILER_PATH="$(llvm release-clang-lldb-13.0.0)/bin"

TARGET_NAME="git"
TARGET_PATH="${TARGET_NAME}"

# Clang

  levels=(O0 O1 O2)
versions=(13 13 13)

for i in ${!levels[*]}; do
  level=${levels[$i]}
  version=${versions[$i]}
  echo "## Building \`${TARGET_NAME}\` (Clang ${version}, ${level})"

  make clean
  git clean -f

  ## Build
  cc_level_opts="CC_${level}_OPTS"
  make \
    CC=wllvm \
    CFLAGS="${CC_COMMON_OPTS} ${CC_CLANG_OPTS} ${!cc_level_opts}"

  ## Extract bitcode
  extract-bc ${TARGET_PATH}
  mkdir -p "${SCRIPT_DIR}/clang/${version}/${level}"
  cp \
    ${TARGET_PATH}.bc \
    "${SCRIPT_DIR}/clang/${version}/${level}/${TARGET_NAME}.bc"

  ## Disassemble bitcode for debugging
  $(llvm release-clang-lldb-${version}.0.0 llvm-dis) \
    "${SCRIPT_DIR}/clang/${version}/${level}/${TARGET_NAME}.bc"

  # Store program binary
  cp \
    ${TARGET_PATH} \
    "${SCRIPT_DIR}/clang/${version}/${level}/${TARGET_NAME}"
done

# Cleanup
echo "## Cleanup"
make clean
git clean -f
