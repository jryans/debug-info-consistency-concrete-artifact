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

level="O0"
version="13"
echo "## Collecting concrete trace of \`${TARGET_NAME}\` (Clang ${version}, ${level})"

# Tests from the target's test suite to analyse
# tests=(
#   t0001-init
#   t1007-hash-object
#   t1410-reflog
#   t2402-worktree-list
#   t3201-branch-contains
#   t3206-range-diff
#   t3301-notes
#   t4002-diff-basic
#   t5505-remote
# )
tests=$(
  find . -name 't[0-9]*.sh' |
  sort |
  cut -d '/' -f 2 |
  cut -d '.' -f 1
)

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

# We only collect a single trace variant at the moment
trace_variant="default"
trace_variant_opts="CON_TRACE_${trace_variant//-/_}_OPTS"
echo "### Collecting trace variant \`${trace_variant}\`: ${!trace_variant_opts}"

# Setup `git` binary wrapper for this variant
ln -s \
  "${SCRIPT_DIR}/test-deps/bin-wrappers/${trace_variant}/git" \
  "${SCRIPT_DIR}/test-deps/bin-wrappers/git"

JOBS="$(echo "$(nproc) - 4" | bc)"

for test in ${tests[*]}; do
  (
    echo "### Analysing execution of \`${TARGET_NAME}\` test \`${test}\`"

    # Make trace directory used as temp storage during execution
    CON_TRACE_DIR="${SCRIPT_DIR}/concrete-trace/${test}/${trace_variant}/traces"
    export CON_TRACE_DIR
    # Remove first, just in case something left over from aborted run
    rm -rf ${CON_TRACE_DIR}
    mkdir -p ${CON_TRACE_DIR}

    env \
      "./${test}.sh"

    # Collect traces from all test processes
    # Sorted by file creation time from oldest to newest
    (
      cd ${CON_TRACE_DIR};
      ls -tr | \
        xargs cat \
        > ${SCRIPT_DIR}/concrete-trace/${test}/${trace_variant}/trace
    )

    # Remove temp trace storage
    rm -rf ${CON_TRACE_DIR}
  ) &

  # Only a fixed number of jobs allowed in parallel
  if [[ $(jobs -r -p | wc -l) -ge ${JOBS} ]]; then
    wait -n
  fi
done

# Ensure all tasks have completed
wait

# Remove link to this variant's binary wrapper
rm -f "${SCRIPT_DIR}/test-deps/bin-wrappers/git"

# Cleanup
rm -f "../${TARGET_NAME}"
rm -f "../${TARGET_NAME}.dwarf"
rm -rf "../bin-wrappers"
rm -rf "../templates/blt"
rm -f "../GIT-BUILD-OPTIONS"
rm -f "../t/helper/test-tool"
