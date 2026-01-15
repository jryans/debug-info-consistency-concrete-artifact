#!/usr/bin/env bash
set -u

# Wraps program execution from test suite to
# redirect to the collection binary for this optimisation level

SCRIPT_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" &> /dev/null && pwd)
source "${SCRIPT_DIR}/../../../../vars.sh"

if [[ "$1" != *"/ffmpeg" ]]; then
  "$@"
  exit
fi

# Remove program path argument
shift

env \
  "${SCRIPT_DIR}/ffmpeg" \
  "$@"
