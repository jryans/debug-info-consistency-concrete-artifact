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

# Clang O0 + mem2reg checked against O0
level="O0-mem2reg"
version="13"
echo "## Checking symbolic debug consistency of \`${TARGET_NAME}\` (Clang ${version}, ${level})"
${SYM_CHECK} \
  ../O0/${TARGET_NAME}.bc \
  ${TARGET_NAME}.bc \
  ${SYM_CHECK_OPTS} \
  --output-source \
  --exclude-function=spec_qsort \
  --exclude-function=worker \
  "$@"
