#!/usr/bin/env bash
set -eux

SCRIPT_PATH=$(readlink -f "${BASH_SOURCE[0]}")
SCRIPT_DIR=$(dirname "${SCRIPT_PATH}")

# In bundled mode, jump to expected directory and invoke Nix shell
if [ -n "${BUNDLED:-}" -a -z "${IN_NIX_SHELL:-}" ]; then
  pushd "${SCRIPT_DIR}"
  nix develop --command bash "${SCRIPT_PATH}"
  popd
  exit
fi

# Expects to run from this script's directory
if [ "${PWD}" != "${SCRIPT_DIR}" ]; then
  echo "Does not appear to be the expected directory, abort!"
  exit
fi

source "${SCRIPT_DIR}/../../../../vars.sh"

echo "## Checking concrete debug consistency"

# Using `LC_ALL=C` gives ~10x performance boost
export LC_ALL=C

# Count unique lines in before trace overall
mkdir -p divergences/default/counts
# rm -f divergences/default/counts/*
find ../O0/concrete-trace -type f -path '*/default/*' | \
  xargs awk '{$1=$1};1' | \
  sort -u | \
  wc -l | \
  awk '{print $1}' \
  > divergences/default/counts/before
