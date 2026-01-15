#!/usr/bin/env bash
set -u

# Exports trace settings as part of test harness shell script

SCRIPT_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" &> /dev/null && pwd)
source "${SCRIPT_DIR}/../../../../vars.sh"

# Make trace directory used as temp storage during execution
# `JOB_NAME` defined by test harness run script which loads this file
# Remove `test` extension from job name
CON_TRACE_DIR="${SCRIPT_DIR}/concrete-trace/${JOB_NAME%.*}/${TRACE_VARIANT}/traces"
export CON_TRACE_DIR
# Remove first, just in case something left over from aborted run
rm -rf ${CON_TRACE_DIR}
mkdir -p ${CON_TRACE_DIR}

# Enable trace collection

eval "export ${CON_COLLECT_INSTRUMENTATION}"

CON_TRACE_SOURCE=1
export CON_TRACE_SOURCE

# CON_TRACE_VERBOSE=1
# export CON_TRACE_VERBOSE
