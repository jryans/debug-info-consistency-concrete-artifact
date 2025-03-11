#!/usr/bin/env bash
set -ux

SCRIPT_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" &> /dev/null && pwd)

# Expects to run from this script's directory
if [ "${PWD}" != "${SCRIPT_DIR}" ]; then
  echo "Does not appear to be the expected directory, abort!"
  exit
fi

TARGET_NAME="git"
source "${SCRIPT_DIR}/../../../../../vars.sh"

# GCC O1 checked against O0
level="O1"
version="11"
echo "## Checking concrete debug consistency of \`${TARGET_NAME}\` (GCC ${version}, ${level})"

for test_path in concrete-trace/t*; do
  test=$(basename ${test_path})
  mkdir -p divergences/${test}/default
  ${CON_COMPARE} \
    ../O0/concrete-trace/${test}/default/trace \
    concrete-trace/${test}/default/trace \
    > divergences/${test}/default/divergences.md
done
