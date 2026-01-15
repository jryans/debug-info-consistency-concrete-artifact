#!/usr/bin/env bash
set -eux

if [ "${PWD##*/}" != "build" ]; then
  echo "Does not appear to be the expected directory, abort!"
  exit
fi

SCRIPT_DIR=$(dirname "${BASH_SOURCE[0]}")
source "${SCRIPT_DIR}/../vars.sh"

echo "## Preparing \`sqlite\`"

# Configure
# Disable threads
# Disable amalgamation
../configure \
  --disable-threadsafe \
  --disable-amalgamation
