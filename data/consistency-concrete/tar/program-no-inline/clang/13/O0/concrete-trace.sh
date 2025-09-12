#!/usr/bin/env bash
set -ux

SCRIPT_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" &> /dev/null && pwd)

# Expects to run from this script's directory
if [ "${PWD}" != "${SCRIPT_DIR}" ]; then
  echo "Does not appear to be the expected directory, abort!"
  exit
fi

TARGET_NAME="tar"
source "${SCRIPT_DIR}/../../../../../vars.sh"

# Analyse `tar` in the context of specific archive to reduce trace noise
# `simple.tar`: https://github.com/alexcrichton/tar-rs/blob/97d5033eb80bf90c746a8b76dd31ca8a39326991/tests/archives/simple.tar
ARCHIVE_NAME="simple"
ARCHIVE_PATH="${HOME}/Downloads/${ARCHIVE_NAME}.tar"

echo "## Collecting concrete trace of \`${TARGET_NAME}\`"

# Each execution of the target to analyse
executions=(extract)
extract_COMMAND="-xvf ${ARCHIVE_PATH}"

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
      mkdir -p ${ARCHIVE_NAME};
      env \
        ${!trace_variant_opts} \
        ${CON_COLLECT_INSTRUMENTATION} \
        "$@" \
        ../../../${TARGET_NAME} \
        -C ${ARCHIVE_NAME} \
        ${!execution_command} \
        > stdout;
      rm -rf ${ARCHIVE_NAME};
      mv trace-* trace
    )
  done
done
