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

  echo "## Building \`${TARGET_NAME}\` (Clang ${version}, ${level}) for bitcode"

  make clean
  git clean -f

  ## Build via bitcode collection wrapper
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

  echo "## Building \`${TARGET_NAME}\` (Clang ${version}, ${level}) for binary with debug info"

  make clean
  git clean -f

  # JRS: For some reason, even though the wrapped steps above do produce a
  # linked, native binary, it does _not_ contain debug info, at least on macOS.
  # For now, work around this by building again normally.

  ## Build for binary with debug info
  cc_level_opts="CC_${level}_OPTS"
  make \
    CC="$(llvm release-clang-lldb-${version}.0.0 clang)" \
    CFLAGS="${CC_COMMON_OPTS} ${CC_CLANG_OPTS} ${!cc_level_opts}" \
    LDFLAGS="${LD_COMMON_OPTS}"

  ## Gather debug info
  dsymutil --flat "${TARGET_PATH}"
  mkdir -p "${SCRIPT_DIR}/clang/${version}/${level}"
  cp \
    "${TARGET_PATH}.dwarf" \
    "${SCRIPT_DIR}/clang/${version}/${level}/${TARGET_NAME}.dwarf"

  # Store program binary
  cp \
    ${TARGET_PATH} \
    "${SCRIPT_DIR}/clang/${version}/${level}/${TARGET_NAME}"
done

# Cleanup
echo "## Cleanup"
make clean
git clean -f
