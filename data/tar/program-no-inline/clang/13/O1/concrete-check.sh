#!/usr/bin/env bash
set -ux

SCRIPT_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" &> /dev/null && pwd)

# Expects to run from this script's directory
if [ "${PWD}" != "${SCRIPT_DIR}" ]; then
  echo "Does not appear to be the expected directory, abort!"
  exit
fi

TARGET_NAME="tar"
source "${SCRIPT_DIR}/../../../../../vars.sh"

# Clang O1 checked against O0
level="O1"
version="13"
echo "## Checking concrete debug consistency of \`${TARGET_NAME}\` (Clang ${version}, ${level})"

mkdir -p diff
git diff --no-index --diff-algorithm=myers -- \
  ../O0/concrete-trace concrete-trace \
  | diffstat -t -p 2 -S ../O0/concrete-trace \
  > diff/myers
git diff --no-index --diff-algorithm=minimal -- \
  ../O0/concrete-trace concrete-trace \
  | diffstat -t -p 2 -S ../O0/concrete-trace \
  > diff/minimal
git diff --no-index --diff-algorithm=patience -- \
  ../O0/concrete-trace concrete-trace \
  | diffstat -t -p 2 -S ../O0/concrete-trace \
  > diff/patience
git diff --no-index --diff-algorithm=histogram -- \
  ../O0/concrete-trace concrete-trace \
  | diffstat -t -p 2 -S ../O0/concrete-trace \
  > diff/histogram
