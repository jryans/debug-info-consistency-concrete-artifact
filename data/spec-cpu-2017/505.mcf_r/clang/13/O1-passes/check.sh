#!/usr/bin/env bash
set -ux

PASS_NAME=$(basename $(pwd))
SCRIPT_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" &> /dev/null && pwd)

# Expects to run from each pass's directory

TARGET_NAME="mcf_r"
source "${SCRIPT_DIR}/../../../../../vars.sh"

# Clang O1 partial pipeline checked against O0
level="O1"
version="13"
echo "## Checking debug consistency of \`${TARGET_NAME}\` (Clang ${version}, ${level} pipeline, pass ${PASS_NAME})"
${CHECK} \
  ${SCRIPT_DIR}/../O0/${TARGET_NAME}.bc \
  ${TARGET_NAME}.bc \
  ${CHECK_OPTS} \
  --output-source \
  --exclude-function=spec_qsort \
  --exclude-function=worker \
  "$@"
