#!/usr/bin/env bash
set -ux

SCRIPT_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" &> /dev/null && pwd)

# Expects to run from this script's directory
if [ "${PWD}" != "${SCRIPT_DIR}" ]; then
  echo "Does not appear to be the expected directory, abort!"
  exit
fi

variants=(clang/13/O1 clang/13/O2 clang/18/O1 gcc/11/O1 gcc/14/O1)
for variant in ${variants[*]}; do
  (cd $variant; time ./concrete-divergence-check.sh &)
done
