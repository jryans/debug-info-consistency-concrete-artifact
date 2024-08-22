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

# Collect trace for Clang O1
level="O1"
version="13"
echo "## Collecting concrete trace of \`${TARGET_NAME}\` (Clang ${version}, ${level})"

mkdir -p concrete-trace/log
(
  cd concrete-trace/log;
  env \
    ${CON_COLLECT_INSTRUMENTATION} \
    "$@" \
    ../../${TARGET_NAME} \
    log -n 10 \
    > stdout
)

mkdir -p concrete-trace/show
(
  cd concrete-trace/show;
  env \
    ${CON_COLLECT_INSTRUMENTATION} \
    "$@" \
    ../../${TARGET_NAME} \
    show -p \
    > stdout
)
