#!/usr/bin/env bash
set -eux

SCRIPT_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" &> /dev/null && pwd)

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

# Configure
# Disable threads
# Disable amalgamation
../configure \
  --disable-threadsafe \
  --disable-amalgamation

popd
