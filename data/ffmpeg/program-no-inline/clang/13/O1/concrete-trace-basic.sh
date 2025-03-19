#!/usr/bin/env bash
set -ux

SCRIPT_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" &> /dev/null && pwd)

# Expects to run from this script's directory
if [ "${PWD}" != "${SCRIPT_DIR}" ]; then
  echo "Does not appear to be the expected directory, abort!"
  exit
fi

TARGET_NAME="ffmpeg"
source "${SCRIPT_DIR}/../../../../../vars.sh"

level="O1"
version="13"
echo "## Collecting concrete trace of \`${TARGET_NAME}\` (Clang ${version}, ${level})"

# Each execution of the target to analyse
executions=(scale)
scale_COMMAND="-i ${HOME}/Downloads/input.mp4 -vf scale=360:240 ${HOME}/Downloads/output.mp4"

# Different trace variants to collect
# These map to different trace options in `vars.sh`
trace_variants=(default)

for execution in ${executions[*]}; do
  execution_command="${execution}_COMMAND"
  echo "### Analysing execution of \`${TARGET_NAME} ${!execution_command}\`"

  for trace_variant in ${trace_variants[*]}; do
    trace_variant_opts="CON_TRACE_${trace_variant//-/_}_OPTS"
    echo "#### Collecting trace variant \`${trace_variant}\`: ${!trace_variant_opts}"

    mkdir -p concrete-trace/${execution}/${trace_variant}
    (
      cd concrete-trace/${execution}/${trace_variant};
      env \
        ${!trace_variant_opts} \
        ${CON_COLLECT_INSTRUMENTATION} \
        "$@" \
        ../../../${TARGET_NAME} \
        ${!execution_command} \
        > stdout;
      rm -f ${HOME}/Downloads/output.mp4;
      mv trace-* trace
    )
  done
done
