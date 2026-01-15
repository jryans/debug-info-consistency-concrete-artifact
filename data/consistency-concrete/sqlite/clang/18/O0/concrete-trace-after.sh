#!/usr/bin/env bash
set -u

unset DYLD_INSERT_LIBRARIES
unset LD_PRELOAD

# Clean up traces after test execution

# Collect traces from all test processes
# Sorted by file creation time from oldest to newest
(
  cd ${CON_TRACE_DIR};
  # Keep individual process files, re-number for matching across runs
  i=0
  for trace in $(ls -tr); do
    mv ${trace} ../${i}
    let i+=1
  done
)

# Remove temp trace storage
rm -rf ${CON_TRACE_DIR}
