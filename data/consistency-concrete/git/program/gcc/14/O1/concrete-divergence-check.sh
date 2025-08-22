#!/usr/bin/env bash
set -eux

SCRIPT_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" &> /dev/null && pwd)

# Expects to run from this script's directory
if [ "${PWD}" != "${SCRIPT_DIR}" ]; then
  echo "Does not appear to be the expected directory, abort!"
  exit
fi

TARGET_NAME="git"
source "${SCRIPT_DIR}/../../../../../vars.sh"

# GCC O1 checked against O0
level="O1"
version="14"
echo "## Checking concrete debug consistency of \`${TARGET_NAME}\` (GCC ${version}, ${level})"

# Using `LC_ALL=C` gives ~10x performance boost
export LC_ALL=C

# Collect divergence report, events, and counts for each test
for test_path in concrete-trace/t*; do
  test=$(basename ${test_path})

  # Collect divergence report and events by type
  mkdir -p divergences/${test}/default
  mkdir -p divergences/${test}/default/events
  rm -f divergences/${test}/default/events/*
  ${CON_COMPARE} \
    --events-by-type-dir divergences/${test}/default/events \
    ../O0/concrete-trace/${test}/default \
    concrete-trace/${test}/default \
    > divergences/${test}/default/divergences.md
  ${CON_COMPARE} \
    --events-by-type-dir divergences/${test}/default/events \
    --save-after-inlining-transform \
    ../O0/concrete-trace/${test}/default \
    concrete-trace/${test}/default \
    -vv \
    > divergences/${test}/default/divergences-verbose.md

  # Count unique divergence lines by type
  mkdir -p divergences/${test}/default/counts
  rm -f divergences/${test}/default/counts/*
  for divergence_type_path in divergences/${test}/default/events/*; do
    divergence_type=$(basename ${divergence_type_path})
    # These files do not include indentation
    sort -u divergences/${test}/default/events/${divergence_type} | \
      wc -l | \
      awk '{print $1}' \
      > divergences/${test}/default/counts/${divergence_type}
  done

  # Count unique lines in before trace overall
  awk '{$1=$1};1' ../O0/concrete-trace/${test}/default/* | \
    sort -u | \
    wc -l | \
    awk '{print $1}' \
    > divergences/${test}/default/counts/before
done

# Aggregate unique line counts across all tests by type
mkdir -p divergences/summary/default/counts
rm -f divergences/summary/default/counts/*
for divergence_type_path in divergences/t0001-init/default/events/*; do
  divergence_type=$(basename ${divergence_type_path})
  cat divergences/t*/default/events/${divergence_type} | \
    sort -u | \
    wc -l | \
    awk '{print $1}' \
    > divergences/summary/default/counts/${divergence_type}
done

# Aggregate unique lines in before trace across all tests
cat ../O0/concrete-trace/t*/default/* | \
  awk '{$1=$1};1' | \
  sort -u | \
  wc -l | \
  awk '{print $1}' \
  > divergences/summary/default/counts/before
