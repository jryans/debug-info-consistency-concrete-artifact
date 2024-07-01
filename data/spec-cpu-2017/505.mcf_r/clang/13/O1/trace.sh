#!/usr/bin/env bash
set -ux

SCRIPT_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" &> /dev/null && pwd)

# Expects to run from this script's directory
if [ "${PWD}" != "${SCRIPT_DIR}" ]; then
  echo "Does not appear to be the expected directory, abort!"
  exit
fi

TARGET_NAME="mcf_r"
source "${SCRIPT_DIR}/../../../../../vars.sh"

level="O1"
version="13"

# Remove old runs
find ./symbolic-trace -type d | xargs rm -rf

# Explore all functions to build symbolic traces
echo "## Build symbolic traces for \`${TARGET_NAME}\` (Clang ${version}, ${level})"
KLEE_TRACE_OPTS="--independent-functions --output-dir=symbolic-trace --write-no-tests --exit-on-function-coverage --max-solver-time=30s --max-time=30s"
${KLEE} ${KLEE_COMMON_OPTS} ${KLEE_TRACE_OPTS} "$@" ${TARGET_NAME}.bc

# Check whether each function is fully covered
./check-coverage.js ./symbolic-trace
