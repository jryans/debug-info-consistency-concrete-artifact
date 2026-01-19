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

# Collect divergence report, events, and counts for test suite

# Collect divergence report and events by type
mkdir -p divergences/default
mkdir -p divergences/default/events
rm -f divergences/default/events/*
${CON_COMPARE} \
  --events-by-type-dir divergences/default/events \
  ../O0/concrete-trace \
  concrete-trace \
  > divergences/default/divergences.md
# JRS: Below options can't be used for now, as inlining directories
# don't yet work with multiple levels
# ${CON_COMPARE} \
#   --inlining-transform clustered \
#   --save-after-inlining-transform \
#   ../O0/concrete-trace \
#   concrete-trace \
#   -vv \
#   > divergences/default/divergences-clustered.md
# ${CON_COMPARE} \
#   --inlining-transform deduplicated \
#   --save-after-inlining-transform \
#   ../O0/concrete-trace \
#   concrete-trace \
#   -vv \
#   > divergences/default/divergences-deduplicated.md

# Count unique divergence lines by type
mkdir -p divergences/default/counts
# rm -f divergences/default/counts/*
for divergence_type_path in divergences/default/events/*; do
  divergence_type=$(basename ${divergence_type_path})
  # These files do not include indentation
  sort -u divergences/default/events/${divergence_type} | \
    wc -l | \
    awk '{print $1}' \
    > divergences/default/counts/${divergence_type}
done
