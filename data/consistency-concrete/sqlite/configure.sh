#!/usr/bin/env bash
set -eux

SCRIPT_PATH=$(readlink -f "${BASH_SOURCE[0]}")
SCRIPT_DIR=$(dirname "${SCRIPT_PATH}")

# In bundled mode, jump to expected directory and invoke Nix shell
if [ -n "${BUNDLED:-}" -a -z "${IN_NIX_SHELL:-}" ]; then
  pushd /artifact/sqlite/build
  nix develop --command bash "${SCRIPT_PATH}"
  popd
  exit
fi

# Expects to run from program build directory
if [ "${PWD##*/}" != "build" ]; then
  echo "Does not appear to be the expected directory, abort!"
  exit
fi
if [ ! -f "../flake.nix" ]; then
  echo "Does not appear to be the expected directory, abort!"
  exit
fi

# Configure
# Disable threads
# Disable amalgamation
../configure \
  --disable-threadsafe \
  --disable-amalgamation
