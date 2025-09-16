#!/usr/bin/env bash
set -eux

SCRIPT_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" &> /dev/null && pwd)

# Expects to run from this script's directory
if [ "${PWD}" != "${SCRIPT_DIR}" ]; then
  echo "Does not appear to be the expected directory, abort!"
  exit
fi

source "${SCRIPT_DIR}/../../../../../vars.sh"

echo "## Checking concrete debug consistency"

# Using `LC_ALL=C` gives ~10x performance boost
export LC_ALL=C

# Only collect tree strategy for now
# Text strategy still available if needed for comparison
strategies=(tree)
for strategy in "${strategies[@]}"; do
  # Collect divergence report, events, and counts for each test
  for test_path in concrete-trace/t*; do
    test=$(basename ${test_path})

    # Collect divergence report and events by type
    mkdir -p divergences/${strategy}/${test}/default
    mkdir -p divergences/${strategy}/${test}/default/events
    rm -f divergences/${strategy}/${test}/default/events/*
    ${CON_COMPARE} \
      --diff-strategy=${strategy} \
      --events-by-type-dir divergences/${strategy}/${test}/default/events \
      ../O0/concrete-trace/${test}/default/trace \
      concrete-trace/${test}/default/trace \
      > divergences/${strategy}/${test}/default/divergences.md \
      || continue

    # Count unique divergence lines by type
    mkdir -p divergences/${strategy}/${test}/default/counts
    rm -f divergences/${strategy}/${test}/default/counts/*
    for divergence_type_path in divergences/${strategy}/${test}/default/events/*; do
      divergence_type=$(basename ${divergence_type_path})
      # These files do not include indentation
      sort -u divergences/${strategy}/${test}/default/events/${divergence_type} | \
        wc -l | \
        awk '{print $1}' \
        > divergences/${strategy}/${test}/default/counts/${divergence_type}
    done

    # Count unique lines in before trace overall
    awk '{$1=$1};1' ../O0/concrete-trace/${test}/default/trace | \
      sort -u | \
      wc -l | \
      awk '{print $1}' \
      > divergences/${strategy}/${test}/default/counts/before
  done

  # Aggregate unique line counts across all tests by type
  mkdir -p divergences/${strategy}/summary/default/counts
  rm -f divergences/${strategy}/summary/default/counts/*
  for divergence_type_path in divergences/${strategy}/t1007-hash-object/default/events/*; do
    divergence_type=$(basename ${divergence_type_path})
    cat divergences/${strategy}/t*/default/events/${divergence_type} | \
      sort -u | \
      wc -l | \
      awk '{print $1}' \
      > divergences/${strategy}/summary/default/counts/${divergence_type}
  done

  # Aggregate unique lines in before trace across all tests
  cat ../O0/concrete-trace/t*/default/trace | \
    awk '{$1=$1};1' | \
    sort -u | \
    wc -l | \
    awk '{print $1}' \
    > divergences/${strategy}/summary/default/counts/before
done
