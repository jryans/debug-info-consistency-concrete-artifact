#!/usr/bin/env bash
set -u

# Wraps program execution from test suite to
# redirect to the collection binary for this optimisation level and
# enable trace collection

SCRIPT_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" &> /dev/null && pwd)
source "${SCRIPT_DIR}/../../../../../vars.sh"

# Remove program path argument
shift

# Enable trace collection

CON_TRACE_SOURCE=1
export CON_TRACE_SOURCE

# CON_TRACE_VERBOSE=1
# export CON_TRACE_VERBOSE

env \
  ${CON_COLLECT_INSTRUMENTATION} \
  "${SCRIPT_DIR}/ffmpeg" \
  "$@"
