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

level="O1"
version="18"
echo "## Collecting concrete trace of \`${TARGET_NAME}\` (Clang ${version}, ${level})"

# Tests from the target's test suite to analyse
tests=(t0001-init t1007-hash-object)

# Different trace variants to collect
# These map to different trace options in `vars.sh`
trace_variants=(default)

# Remove dependencies from past runs
rm -f "../${TARGET_NAME}"
rm -f "../${TARGET_NAME}.dwarf"
rm -rf "../bin-wrappers"
rm -rf "../templates/blt"
rm -f "../GIT-BUILD-OPTIONS"
rm -f "../t/helper/test-tool"

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

for test in ${tests[*]}; do
  echo "### Analysing execution of \`${TARGET_NAME}\` test \`${test}\`"

  for trace_variant in ${trace_variants[*]}; do
    trace_variant_opts="CON_TRACE_${trace_variant//-/_}_OPTS"
    echo "#### Collecting trace variant \`${trace_variant}\`: ${!trace_variant_opts}"

    # Setup `git` binary wrapper for this variant
    ln -s \
      "${SCRIPT_DIR}/test-deps/bin-wrappers/${trace_variant}/git" \
      "${SCRIPT_DIR}/test-deps/bin-wrappers/git"

    # Remove temporary trace collection from past runs
    rm -rf traces

    mkdir -p ${SCRIPT_DIR}/concrete-trace/${test}/${trace_variant}
    env \
      "./${test}.sh" \
      --debug

    # Collect traces from all test processes
    # Sorted by file creation time from oldest to newest
    (
      mkdir traces;
      find . -name 'trace-*' -print0 | \
        xargs -J % -0 mv % traces;
      cd traces;
      ls -tUr | \
        xargs cat \
        > ${SCRIPT_DIR}/concrete-trace/${test}/${trace_variant}/trace
    )

    # Remove link to this variant's binary wrapper
    rm -f "${SCRIPT_DIR}/test-deps/bin-wrappers/git"
  done
done

# Cleanup
rm -f "../${TARGET_NAME}"
rm -f "../${TARGET_NAME}.dwarf"
rm -rf "../bin-wrappers"
rm -rf "../templates/blt"
rm -f "../GIT-BUILD-OPTIONS"
rm -f "../t/helper/test-tool"
