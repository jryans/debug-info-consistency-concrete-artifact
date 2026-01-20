#!/usr/bin/env bash
set -eux

SCRIPT_PATH=$(readlink -f "${BASH_SOURCE[0]}")
SCRIPT_DIR=$(dirname "${SCRIPT_PATH}")

# Expects to run from this script's directory
if [ "${PWD}" != "${SCRIPT_DIR}" ]; then
  echo "Does not appear to be the expected directory, abort!"
  exit
fi

echo "## Preparing \`sqlite\`"

git clone https://github.com/sqlite/sqlite ../../../sqlite

pushd ../../../sqlite

git checkout 8ed5e7365e6f12f427910188bbf6b254daad2ef6
git am ${SCRIPT_DIR}/patches/*.patch

mkdir build
cd build

${SCRIPT_DIR}/configure.sh

popd
