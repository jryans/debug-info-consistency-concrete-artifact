#!/usr/bin/env bash
set -eux

# Expects to run from program build directory
if [ "${PWD##*/}" != "build_base_mytest-m64.0000" ]; then
  echo "Does not appear to be the expected directory, abort!"
  exit
fi

SCRIPT_DIR=$(dirname "${BASH_SOURCE[0]}")
source "${SCRIPT_DIR}/../../vars.sh"

PIPELINE_UTILS_PATH="${SCRIPT_DIR}/../../shared/pipeline.py"

export LLVM_COMPILER="clang"
export LLVM_COMPILER_PATH="$(llvm release-clang-lldb-13)/bin"

# Expected by SPEC build system
export SPEC="${HOME}/Projects/Benchmarks/spec-cpu-2017"

TARGET_NAME="perl"
TARGET_PATH="perlbench_r"

# Clang

  levels=(O0 O1)
versions=(18 18)

for i in ${!levels[*]}; do
  level=${levels[$i]}
  version=${versions[$i]}

  echo "## Building \`${TARGET_NAME}\` (Clang ${version}, ${level}) for binary with debug info"

  make clean

  # JRS: For some reason, even though the wrapped steps above do produce a
  # linked, native binary, it does _not_ contain debug info, at least on macOS.
  # For now, work around this by building again normally.

  ## Build for binary with debug info
  cc_level_opts="CC_${level}_OPTS"
  make \
    CC="$(llvm release-clang-lldb-${version} clang)" \
    OPTIMIZE="" \
    EXTRA_CFLAGS="${CC_COMMON_OPTS} ${CC_CLANG_OPTS} ${!cc_level_opts} -fsave-optimization-record" \
    EXTRA_LDFLAGS="${CC_COMMON_OPTS} ${CC_CLANG_OPTS} ${LD_COMMON_OPTS}"

  mkdir -p "${SCRIPT_DIR}/clang/${version}/${level}"

  ## Collect optimisation remarks
  ( \
    find . -name '*.opt.yaml' | \
    xargs cat \
    > "${SCRIPT_DIR}/clang/${version}/${level}/${TARGET_NAME}.opt.yaml" \
  )

  ## Gather debug info
  if [[ "$OS" == 'mac' ]]; then
    dsymutil --flat "${TARGET_PATH}"
    cp \
      "${TARGET_PATH}.dwarf" \
      "${SCRIPT_DIR}/clang/${version}/${level}/${TARGET_NAME}.dwarf"
  fi

  ## Store program binary
  cp \
    ${TARGET_PATH} \
    "${SCRIPT_DIR}/clang/${version}/${level}/${TARGET_NAME}"
done

# GCC

#   levels=(O0 O1 O2)
# versions=(11 11 11)

# for i in ${!levels[*]}; do
#   version=${versions[$i]}
#   level=${levels[$i]}

#   echo "## Building \`${TARGET_NAME}\` (GCC ${version}, ${level}) for binary with debug info"

#   make clean

#   ## Build for binary with debug info
#   cc_level_opts="CC_${level}_OPTS"
#   make \
#     CC="$(gcc release-${version} gcc)" \
#     OPTIMIZE="" \
#     EXTRA_CFLAGS="${CC_COMMON_OPTS} ${CC_GCC_OPTS} ${!cc_level_opts}" \
#     EXTRA_LDFLAGS="${CC_COMMON_OPTS} ${CC_GCC_OPTS} ${LD_COMMON_OPTS}"

#   mkdir -p "${SCRIPT_DIR}/gcc/${version}/${level}"

#   # TODO: Try GCC's version of `-fsave-optimization-record`
#   # ## Collect optimisation remarks
#   # ( \
#   #   find . -name '*.opt-record.json.gz' | \
#   #   xargs cat \
#   #   > "${SCRIPT_DIR}/gcc/${version}/${level}/${TARGET_NAME}.opt-record.json.gz" \
#   # )

#   ## Gather debug info
#   if [[ "$OS" == 'mac' ]]; then
#     dsymutil --flat "${TARGET_PATH}"
#     cp \
#       "${TARGET_PATH}.dwarf" \
#       "${SCRIPT_DIR}/gcc/${version}/${level}/${TARGET_NAME}.dwarf"
#   fi

#   ## Store program binary
#   cp \
#     ${TARGET_PATH} \
#     "${SCRIPT_DIR}/gcc/${version}/${level}/${TARGET_NAME}"
# done

# Cleanup
echo "## Cleanup"
make clean
