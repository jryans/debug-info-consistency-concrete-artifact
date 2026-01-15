#!/usr/bin/env bash
set -ux

SCRIPT_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" &> /dev/null && pwd)

# Expects to run from program source directory
if [ "${PWD##*/}" != "sqlite" ]; then
  echo "Does not appear to be the expected directory, abort!"
  exit
fi

source "${SCRIPT_DIR}/../../../../vars.sh"

TARGET_NAME="testfixture"

echo "## Collecting coverage using reduced concrete trace test suite"

PROFILE_BASE_DIR="${SCRIPT_DIR}/coverage/trace"
rm -rf ${PROFILE_BASE_DIR}
PROFILE_DIR="${PROFILE_BASE_DIR}/profiles"
mkdir -p ${PROFILE_DIR}
LLVM_PROFILE_FILE="${PROFILE_DIR}/%p.profdata"
export LLVM_PROFILE_FILE

JOBS="$(echo "$(nproc) - 4" | bc)"

${SCRIPT_DIR}/testfixture \
  ./test/testrunner.tcl \
  --jobs ${JOBS} \
  debug-info-consistency

echo "## Merging raw profiles into indexed profile"

find ${PROFILE_BASE_DIR} -type f -name '*.profdata' | \
  $(llvm release-clang-lldb 18 llvm-profdata) \
    merge \
    -f - \
    -o "${PROFILE_BASE_DIR}/merged.profdata"

# Remove raw profiles, takes up too much space
rm -rf ${PROFILE_DIR}

echo "## Reporting coverage"

$(llvm release-clang-lldb 18 llvm-cov) \
  report \
  -instr-profile "${PROFILE_BASE_DIR}/merged.profdata" \
  ${SCRIPT_DIR}/${TARGET_NAME} > \
  "${PROFILE_BASE_DIR}/coverage"
