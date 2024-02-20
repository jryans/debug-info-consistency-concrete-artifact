#!/usr/bin/env bash
set -ux

SCRIPT_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" &> /dev/null && pwd)

# Expects to run from this script's directory
if [ "${PWD}" != "${SCRIPT_DIR}" ]; then
  echo "Does not appear to be the expected directory, abort!"
  exit
fi

TARGET_NAME="git"
source "${SCRIPT_DIR}/../../vars.sh"

# Clang O0 + mem2reg checked against O0
level="O0-mem2reg"
version="13"
echo "## Checking debug consistency of \`${TARGET_NAME}\` (Clang ${version}, ${level})"
${CHECK} \
  clang/${version}/O0/${TARGET_NAME}.bc \
  clang/${version}/${level}/${TARGET_NAME}.bc \
  ${CHECK_OPTS} \
  "$@"

# TODO: Restructure this to capture a separate log for each version and level

# # Clang O1+ checked against O0
#   levels=(O1 O2)
# versions=(13 13)

# for i in ${!levels[*]}; do
#   level=${levels[$i]}
#   version=${versions[$i]}
#   echo "## Checking debug consistency of \`${TARGET_NAME}\` (Clang ${version}, ${level})"
#   ${CHECK} \
#     clang/${version}/O0/${TARGET_NAME}.bc \
#     clang/${version}/${level}/${TARGET_NAME}.bc \
#     ${CHECK_OPTS} \
#     "$@"
# done
