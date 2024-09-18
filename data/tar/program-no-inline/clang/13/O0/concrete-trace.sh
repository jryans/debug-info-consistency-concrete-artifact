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
ARCHIVE_NAME="git-2.39.0-rc2"
ARCHIVE_PATH="${HOME}/Downloads/${ARCHIVE_NAME}.tar.gz"

# Collect trace for Clang O0
level="O0"
version="13"
echo "## Collecting concrete trace of \`${TARGET_NAME}\` (Clang ${version}, ${level})"

# Each execution of the target to analyse
executions=(extract)
extract_COMMAND="-xvf ${ARCHIVE_PATH}"

# Different trace variants to collect
# These map to different trace options in `vars.sh`
trace_variants=(default rfld ld ld-eld ld-eld-ifd)

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
      rm -rf ${ARCHIVE_NAME}
    )
  done
done
