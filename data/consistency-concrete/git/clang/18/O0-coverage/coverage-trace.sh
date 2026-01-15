#!/usr/bin/env bash
set -ux

SCRIPT_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" &> /dev/null && pwd)

# Expects to run from program build directory
if [ "${PWD##*/}" != "t" ]; then
  echo "Does not appear to be the expected directory, abort!"
  exit
fi

source "${SCRIPT_DIR}/../../../../vars.sh"

TARGET_NAME="git"

echo "## Collecting coverage using reduced concrete trace test suite"

PROFILE_BASE_DIR="${SCRIPT_DIR}/coverage/trace"
rm -rf ${PROFILE_BASE_DIR}
PROFILE_DIR="${PROFILE_BASE_DIR}/profiles"
mkdir -p ${PROFILE_DIR}
LLVM_PROFILE_FILE="${PROFILE_DIR}/%p.profdata"
export LLVM_PROFILE_FILE

# Tests from the target's test suite to analyse
tests=$(
  find . -name 't[0-9]*.sh' |
  sort |
  cut -d '/' -f 2 |
  cut -d '.' -f 1 |
  grep -v -f "${SCRIPT_DIR}/../../../../grep-filter"
)

# Remove dependencies from past runs
rm -f "../${TARGET_NAME}"
rm -rf "../bin-wrappers"
rm -rf "../templates/blt"
rm -f "../GIT-BUILD-OPTIONS"
rm -f "../t/helper/test-tool"

# Set up test dependencies
ln -s "${SCRIPT_DIR}/${TARGET_NAME}" "../"
ln -s "${SCRIPT_DIR}/test-deps/bin-wrappers" "../"
ln -s "${SCRIPT_DIR}/test-deps/blt" "../templates/"
ln -s "${SCRIPT_DIR}/test-deps/GIT-BUILD-OPTIONS" "../"
ln -s "${SCRIPT_DIR}/test-deps/test-tool" "../t/helper/"

JOBS="$(echo "$(nproc) - 4" | bc)"

for test in ${tests[*]}; do
  (
    echo "### Collecting coverage from \`${TARGET_NAME}\` test \`${test}\`"

    env \
      "./${test}.sh"
  ) &

  # Only a fixed number of jobs allowed in parallel
  if [[ $(jobs -r -p | wc -l) -ge ${JOBS} ]]; then
    wait -n
  fi
done

# Ensure all tasks have completed
wait

# Cleanup
rm -f "../${TARGET_NAME}"
rm -rf "../bin-wrappers"
rm -rf "../templates/blt"
rm -f "../GIT-BUILD-OPTIONS"
rm -f "../t/helper/test-tool"

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
