#!/usr/bin/env bash
set -ux

# Expects to run from program source tests subdirectory
if [ "${PWD##*/}" != "t" ]; then
  echo "Does not appear to be the expected directory, abort!"
  exit
fi

SCRIPT_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" &> /dev/null && pwd)
source "${SCRIPT_DIR}/../../../../../vars.sh"

TARGET_NAME="git"

level="O2"
version="13"
echo "## Collecting concrete trace of \`${TARGET_NAME}\` (Clang ${version}, ${level})"

# Tests from the target's test suite to analyse
tests=(t0001-init)

# Different trace variants to collect
# These map to different trace options in `vars.sh`
trace_variants=(default)

# Set up test dependencies
ln -s "${SCRIPT_DIR}/${TARGET_NAME}" "../"
ln -s "${SCRIPT_DIR}/${TARGET_NAME}.dwarf" "../"
ln -s "${SCRIPT_DIR}/test-deps/bin-wrappers" "../"
ln -s "${SCRIPT_DIR}/test-deps/blt" "../templates/"
ln -s "${SCRIPT_DIR}/test-deps/GIT-BUILD-OPTIONS" "../"
ln -s "${SCRIPT_DIR}/test-deps/test-tool" "../t/helper/"

# TODO: Automatically modify `git` binary wrapper to add instrumentation
# For now, this is done manually by adding:
# ```
# DYLD_INSERT_LIBRARIES=<path from `CON_COLLECT_INSTRUMENTATION`>
# export DYLD_INSERT_LIBRARIES
# ```
# Trace variant options would similarly need to find their way there too.

for test in ${tests[*]}; do
  echo "### Analysing execution of \`${TARGET_NAME}\` test \`${test}\`"

  for trace_variant in ${trace_variants[*]}; do
    trace_variant_opts="CON_TRACE_${trace_variant//-/_}_OPTS"
    echo "#### Collecting trace variant \`${trace_variant}\`: ${!trace_variant_opts}"

    mkdir -p ${SCRIPT_DIR}/concrete-trace/${test}/${trace_variant}
    env \
      "./${test}.sh" \
      --debug

    # Collect traces from all test processes
    # Sorted by file creation time from oldest to newest
    (
      cd "./trash directory.${test}";
      find . -name 'trace-*' | \
        xargs ls -tUr | \
        xargs cat \
        > ${SCRIPT_DIR}/concrete-trace/${test}/${trace_variant}/trace
    )
  done
done
