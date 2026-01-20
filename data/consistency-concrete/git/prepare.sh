#!/usr/bin/env bash
set -eux

SCRIPT_PATH=$(readlink -f "${BASH_SOURCE[0]}")
SCRIPT_DIR=$(dirname "${SCRIPT_PATH}")

# Expects to run from this script's directory
if [ "${PWD}" != "${SCRIPT_DIR}" ]; then
  echo "Does not appear to be the expected directory, abort!"
  exit
fi

echo "## Preparing \`git\`"

git clone https://github.com/git/git ../../../git

pushd ../../../git

git checkout bd5df96b7916c1e8a9300ab477aec047b3901cd4
git am ${SCRIPT_DIR}/patches/*.patch

popd
