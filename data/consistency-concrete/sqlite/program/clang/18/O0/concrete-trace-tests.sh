#!/usr/bin/env bash
set -ux

# Expects to run from program source directory
if [ "${PWD##*/}" != "sqlite" ]; then
  echo "Does not appear to be the expected directory, abort!"
  exit
fi

SCRIPT_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" &> /dev/null && pwd)
source "${SCRIPT_DIR}/../../../../../vars.sh"

TARGET_NAME="testfixture"

echo "## Collecting concrete trace of SQLite"

# We only collect a single trace variant at the moment
TRACE_VARIANT="default"
export TRACE_VARIANT
trace_variant_opts="CON_TRACE_${TRACE_VARIANT//-/_}_OPTS"
echo "### Collecting trace variant \`${TRACE_VARIANT}\`: ${!trace_variant_opts}"

JOBS="$(echo "$(nproc) - 4" | bc)"

${SCRIPT_DIR}/testfixture \
  ./test/testrunner.tcl \
  --jobs ${JOBS} \
  --before-script "${SCRIPT_DIR}/concrete-trace-before.sh" \
  --after-script "${SCRIPT_DIR}/concrete-trace-after.sh"
