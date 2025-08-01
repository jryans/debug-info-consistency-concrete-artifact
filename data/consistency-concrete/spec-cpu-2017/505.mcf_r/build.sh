#!/usr/bin/env bash
set -eux

# Expects to run from program source directory
if [ "${PWD##*/}" != "build_base_mytest.0000" ]; then
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

TARGET_NAME="mcf_r"
TARGET_PATH="${TARGET_NAME}"

# Clang O0

level="O0"
version="13"
echo "## Building \`${TARGET_NAME}\` (Clang ${version}, ${level})"

make clean

## Build for O0
make \
  CC="wllvm -std=c99" \
  EXTRA_CFLAGS="${CC_COMMON_OPTS} ${CC_CLANG_OPTS} ${CC_O0_OPTS} -fno-inline" \
  EXTRA_LDFLAGS="${CC_SYSROOT_OPTS}"

## Extract bitcode for O0
extract-bc ${TARGET_PATH}
mkdir -p "${SCRIPT_DIR}/clang/${version}/${level}"
cp \
  ${TARGET_PATH}.bc \
  "${SCRIPT_DIR}/clang/${version}/${level}/${TARGET_NAME}.bc"

## Disassemble O0 bitcode for debugging
$(llvm release-clang-lldb-${version} llvm-dis) \
  "${SCRIPT_DIR}/clang/${version}/${level}/${TARGET_NAME}.bc"

## Apply mem2reg only
mkdir -p "${SCRIPT_DIR}/clang/${version}/${level}-mem2reg"
$(llvm release-clang-lldb-${version} opt) \
  -o "${SCRIPT_DIR}/clang/${version}/${level}-mem2reg/${TARGET_NAME}.bc" \
  --mem2reg \
  "${SCRIPT_DIR}/clang/${version}/${level}/${TARGET_NAME}.bc"

## Disassemble O0 plus mem2reg bitcode for debugging
$(llvm release-clang-lldb-${version} llvm-dis) \
  "${SCRIPT_DIR}/clang/${version}/${level}-mem2reg/${TARGET_NAME}.bc"

# Clang O1+

  levels=(O1 O2 O3)
versions=(13 13 13)

for i in ${!levels[*]}; do
  level=${levels[$i]}
  version=${versions[$i]}
  echo "## Building \`${TARGET_NAME}\` (Clang ${version}, ${level})"

  make clean

  ## Build
  cc_level_opts="CC_${level}_OPTS"
  make \
    CC="wllvm -std=c99" \
    EXTRA_CFLAGS="${CC_COMMON_OPTS} ${CC_CLANG_OPTS} ${!cc_level_opts} -fno-inline" \
    EXTRA_LDFLAGS="${CC_SYSROOT_OPTS}"

  ## Extract bitcode
  extract-bc ${TARGET_PATH}
  mkdir -p "${SCRIPT_DIR}/clang/${version}/${level}"
  cp \
    ${TARGET_PATH}.bc \
    "${SCRIPT_DIR}/clang/${version}/${level}/${TARGET_NAME}.bc"

  ## Disassemble bitcode for debugging
  $(llvm release-clang-lldb-${version} llvm-dis) \
    "${SCRIPT_DIR}/clang/${version}/${level}/${TARGET_NAME}.bc"
done

# Clang O1 pipeline, pass by pass

level="O1"
version="13"
echo "## Building \`${TARGET_NAME}\` (Clang ${version}, ${level} pipeline, pass by pass)"

# `--print-pipeline-passes` first added in LLVM 14
pipeline=$($(llvm release-clang-lldb-14 opt) \
           --passes="default<${level}>" \
           --print-pipeline-passes \
           < /dev/null)
passes_count=$(python3 ${PIPELINE_UTILS_PATH} ${pipeline} --count)

for i in $(seq 0 8); do
  printf -v li "%03u" ${i}
  portion=$(python3 ${PIPELINE_UTILS_PATH} ${pipeline} --split ${i})
  name=$(python3 ${PIPELINE_UTILS_PATH} ${pipeline} --last ${i})
  echo "### Building \`${TARGET_NAME}\` (Clang ${version}, ${level} pipeline, pass ${i}: ${name})"

  ## Apply only the portion of pipeline up to this pass
  mkdir -p "${SCRIPT_DIR}/clang/${version}/${level}-passes/${li}-${name}"
  $(llvm release-clang-lldb-${version} opt) \
    -o "${SCRIPT_DIR}/clang/${version}/${level}-passes/${li}-${name}/${TARGET_NAME}.bc" \
    --passes="${portion}" \
    "${SCRIPT_DIR}/clang/${version}/O0/${TARGET_NAME}.bc"

  ## Disassemble bitcode for debugging
  $(llvm release-clang-lldb-${version} llvm-dis) \
    "${SCRIPT_DIR}/clang/${version}/${level}-passes/${li}-${name}/${TARGET_NAME}.bc"
done

# Cleanup
echo "## Cleanup"
make clean
