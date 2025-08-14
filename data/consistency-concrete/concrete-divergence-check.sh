#!/usr/bin/env bash
set -eux

SCRIPT_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" &> /dev/null && pwd)

# Expects to run from this script's directory
if [ "${PWD}" != "${SCRIPT_DIR}" ]; then
  echo "Does not appear to be the expected directory, abort!"
  exit
fi

variants=(
  ffmpeg/program-no-inline/clang/13/O1
  ffmpeg/program/clang/13/O1
  git/program-no-inline/clang/13/O1
  git/program/clang/13/O1
)
for variant in ${variants[*]}; do
  (cd $variant; time ./concrete-divergence-check.sh &)
done
