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

# Clang O1 checked against O0
level="O1"
version="13"
echo "## Checking concrete debug consistency of \`${TARGET_NAME}\` (Clang ${version}, ${level})"

${CON_COMPARE} \
  ../O0/concrete-trace/t0001-init/default/trace \
  concrete-trace/t0001-init/default/trace \
  > divergences.md
