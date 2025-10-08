#!/usr/bin/env bash
set -ux

SCRIPT_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" &> /dev/null && pwd)

# Expects to run from program build directory
if [ "${PWD##*/}" != "build_base_mytest-m64.0000" ]; then
  echo "Does not appear to be the expected directory, abort!"
  exit
fi

source "${SCRIPT_DIR}/../../../../../vars.sh"

TARGET_NAME="xz-bench"

echo "## Collecting coverage using benchmark inputs for SPEC CPU test"

PROFILE_BASE_DIR="${SCRIPT_DIR}/coverage/bench"
rm -rf ${PROFILE_BASE_DIR}
PROFILE_DIR="${PROFILE_BASE_DIR}/profiles"
mkdir -p ${PROFILE_DIR}
LLVM_PROFILE_FILE="${PROFILE_DIR}/%p.profdata"
export LLVM_PROFILE_FILE

${SCRIPT_DIR}/${TARGET_NAME} \
  ../../data/all/input/cld.tar.xz \
  160 \
  19cf30ae51eddcbefda78dd06014b4b96281456e078ca7c13e1c0c9e6aaea8dff3efb4ad6b0456697718cede6bd5454852652806a657bb56e07d61128434b474 \
  59796407 \
  61004416 \
  6

${SCRIPT_DIR}/${TARGET_NAME} \
  ../../data/all/input/cpu2006docs.tar.xz \
  250 \
  055ce243071129412e9dd0b3b69a21654033a9b723d874b2015c774fac1553d9713be561ca86f74e4f16f22e664fc17a79f30caa5ad2c04fbc447549c2810fae \
  23047774 \
  23513385 \
  6e

${SCRIPT_DIR}/${TARGET_NAME} \
  ../../data/all/input/input.combined.xz \
  250 \
  a841f68f38572a49d86226b7ff5baeb31bd19dc637a922a972b2e6d1257a890f6a544ecab967c313e370478c74f760eb229d4eef8a8d2836d233d3e9dd1430bf \
  40401484 \
  41217675 \
  7

echo "## Merging raw profiles into indexed profile"

find ${PROFILE_BASE_DIR} -type f -name '*.profdata' | \
  $(llvm release-clang-lldb-18 llvm-profdata) \
    merge \
    -f - \
    -o "${PROFILE_BASE_DIR}/merged.profdata"

echo "## Reporting coverage"

$(llvm release-clang-lldb-18 llvm-cov) \
  report \
  -instr-profile "${PROFILE_BASE_DIR}/merged.profdata" \
  ${SCRIPT_DIR}/${TARGET_NAME} > \
  "${PROFILE_BASE_DIR}/coverage"
