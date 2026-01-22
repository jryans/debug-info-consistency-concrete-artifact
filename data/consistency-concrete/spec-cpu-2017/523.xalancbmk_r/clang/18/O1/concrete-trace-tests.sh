#!/usr/bin/env bash
set -ux

SCRIPT_PATH=$(readlink -f "${BASH_SOURCE[0]}")
SCRIPT_DIR=$(dirname "${SCRIPT_PATH}")

# In bundled mode, jump to expected directory and invoke Nix shell
if [ -n "${BUNDLED:-}" -a -z "${IN_NIX_SHELL:-}" ]; then
  pushd "${SCRIPT_DIR}"
  nix develop --command bash "${SCRIPT_PATH}"
  popd
  exit
fi

# Expects to run from this script's directory
if [ "${PWD}" != "${SCRIPT_DIR}" ]; then
  echo "Does not appear to be the expected directory, abort!"
  exit
fi

source "${SCRIPT_DIR}/../../../../../vars.sh"

TARGET_NAME="xalanc"
TARGET_STYLESHEET="${SCRIPT_DIR}/../../../data/xalanc.xsl"
TARGET_INPUT="${SCRIPT_DIR}/../../../data/test.xml"
TARGET_OPTS="-v ${TARGET_INPUT} ${TARGET_STYLESHEET}"

echo "## Collecting concrete trace of SPEC CPU test"

# We only collect a single trace variant at the moment
trace_variant="default"
trace_variant_opts="CON_TRACE_${trace_variant//-/_}_OPTS"
echo "### Collecting trace variant \`${trace_variant}\`: ${!trace_variant_opts}"

# Make trace directory used as temp storage during execution
CON_TRACE_DIR="${SCRIPT_DIR}/concrete-trace/${trace_variant}/traces"
export CON_TRACE_DIR
# Remove first, just in case something left over from aborted run
rm -rf ${CON_TRACE_DIR}
mkdir -p ${CON_TRACE_DIR}

env \
  ${CON_COLLECT_INSTRUMENTATION} \
  ${!trace_variant_opts} \
  ${SCRIPT_DIR}/${TARGET_NAME} \
  ${TARGET_OPTS}

# Collect traces from all test processes
# Sorted by file creation time from oldest to newest
(
  cd ${CON_TRACE_DIR};
  # Keep individual process files, re-number for matching across runs
  i=0
  for trace in $(ls -tr); do
    mv ${trace} ../${i}
    let i+=1
  done
)

# Remove temp trace storage
rm -rf ${CON_TRACE_DIR}
