#!/usr/bin/env bash
set -ux

SCRIPT_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" &> /dev/null && pwd)

# Expects to run from program build directory
if [ "${PWD##*/}" != "build_base_mytest-m64.0000" ]; then
  echo "Does not appear to be the expected directory, abort!"
  exit
fi

source "${SCRIPT_DIR}/../../../../../vars.sh"

TARGET_NAME="x264"
TARGET_INPUT="../../data/refrate/input/BuckBunny.yuv"

echo "## Collecting coverage using benchmark inputs for SPEC CPU test"

PROFILE_BASE_DIR="${SCRIPT_DIR}/coverage/bench"
rm -rf ${PROFILE_BASE_DIR}
PROFILE_DIR="${PROFILE_BASE_DIR}/profiles"
mkdir -p ${PROFILE_DIR}
LLVM_PROFILE_FILE="${PROFILE_DIR}/%p.profdata"
export LLVM_PROFILE_FILE

STATS_FILE="/tmp/x264.stats"
rm -f ${STATS_FILE}

${SCRIPT_DIR}/${TARGET_NAME} \
  --pass 1 \
  --stats ${STATS_FILE} \
  --bitrate 1000 \
  --frames 1000 \
  -o /dev/null \
  ${TARGET_INPUT} \
  1280x720

${SCRIPT_DIR}/${TARGET_NAME} \
  --pass 2 \
  --stats ${STATS_FILE} \
  --bitrate 1000 \
  --frames 1000 \
  -o /dev/null \
  ${TARGET_INPUT} \
  1280x720

${SCRIPT_DIR}/${TARGET_NAME} \
  --seek 500 \
  --frames 1250 \
  -o /dev/null \
  ${TARGET_INPUT} \
  1280x720

echo "## Merging raw profiles into indexed profile"

find ${PROFILE_BASE_DIR} -type f -name '*.profdata' | \
  $(llvm release-clang-lldb 18 llvm-profdata) \
    merge \
    -f - \
    -o "${PROFILE_BASE_DIR}/merged.profdata"

echo "## Reporting coverage"

$(llvm release-clang-lldb 18 llvm-cov) \
  report \
  -instr-profile "${PROFILE_BASE_DIR}/merged.profdata" \
  ${SCRIPT_DIR}/${TARGET_NAME} > \
  "${PROFILE_BASE_DIR}/coverage"
