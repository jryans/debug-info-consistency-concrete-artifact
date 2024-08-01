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

# Collect trace for Clang O0
level="O0"
version="13"
echo "## Collecting concrete trace of \`${TARGET_NAME}\` (Clang ${version}, ${level})"
# TODO: Generalise this to support Linux as well as macOS
DYLD_INSERT_LIBRARIES=${CON_COLLECT_INSTRUMENTATION} \
  "$@" \
  ./${TARGET_NAME} \
  log -n 10 \
  > concrete-trace/stdout
