#!/usr/bin/env bash
set -ux

SCRIPT_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" &> /dev/null && pwd)

# Expects to run from this script's directory
if [ "${PWD}" != "${SCRIPT_DIR}" ]; then
  echo "Does not appear to be the expected directory, abort!"
  exit
fi

TARGET_NAME="git"
source "${SCRIPT_DIR}/../../../../../vars.sh"

# Analyse `git` in the context of separate repo to reduce trace noise
REPO_PATH="${HOME}/Projects/ripgrep"

level="O1"
version="13"
echo "## Collecting concrete trace of \`${TARGET_NAME}\` (Clang ${version}, ${level})"

# Each execution of the target to analyse
executions=(log show)
log_COMMAND="log -n 10"
show_COMMAND="show -p"

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
        -C ${REPO_PATH} \
        ${!execution_command} \
        > stdout;
      mv trace-* trace
    )

    mkdir -p concrete-trace-with-source/${execution}/${trace_variant}
    (
      cd concrete-trace-with-source/${execution}/${trace_variant};
      env \
        CON_TRACE_SOURCE=1 \
        ${!trace_variant_opts} \
        ${CON_COLLECT_INSTRUMENTATION} \
        "$@" \
        ../../../${TARGET_NAME} \
        -C ${REPO_PATH} \
        ${!execution_command} \
        > stdout;
      mv trace-* trace
    )
  done

  # Filter some variants using memory effect knowledge via function attributes
  mkdir -p concrete-trace/${execution}/ld-eld-ormfd
  (
    cd concrete-trace/${execution}/ld-eld-ormfd;
    ${CON_FILTER_TRACE_MEMORY_EFFECTS} \
      ../ld-eld/trace \
      ../../../../O0-function-attrs/${TARGET_NAME}.bc \
      > trace
  )
done
