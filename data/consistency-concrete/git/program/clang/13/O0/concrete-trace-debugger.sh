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

level="O0"
version="13"
echo "## Collecting concrete trace of \`${TARGET_NAME}\` (Clang ${version}, ${level})"
PYTHONPATH=${LLDB_PYTHON_MODULES} \
  ${LLDB_PYTHON} \
  ${CON_COLLECT_DEBUGGER} \
  "$@" \
  ${TARGET_NAME} \
  -- \
  log -n 10
