#!/usr/bin/env bash
set -eux

SCRIPT_PATH=$(readlink -f "${BASH_SOURCE[0]}")
SCRIPT_DIR=$(dirname "${SCRIPT_PATH}")

# Expects to run from this script's directory
if [ "${PWD}" != "${SCRIPT_DIR}" ]; then
  echo "Does not appear to be the expected directory, abort!"
  exit
fi

# FFmpeg
pushd ffmpeg

./prepare.sh

./build.sh

./clang/18/O0/concrete-trace-tests-reduced.sh
./clang/18/O1/concrete-trace-tests-reduced.sh

./clang/18/O1/concrete-divergence-check.sh

popd

# Git
pushd git

./prepare.sh

./build.sh

./clang/13/O0/concrete-trace-tests-reduced.sh
./clang/13/O1/concrete-trace-tests-reduced.sh
./clang/13/O2/concrete-trace-tests-reduced.sh
./clang/18/O0/concrete-trace-tests-reduced.sh
./clang/18/O1/concrete-trace-tests-reduced.sh
./gcc/11/O0/concrete-trace-tests-reduced.sh
./gcc/11/O1/concrete-trace-tests-reduced.sh
./gcc/14/O0/concrete-trace-tests-reduced.sh
./gcc/14/O1/concrete-trace-tests-reduced.sh

./clang/13/O1/concrete-divergence-check.sh
./clang/13/O2/concrete-divergence-check.sh
./clang/18/O1/concrete-divergence-check.sh
./gcc/11/O1/concrete-divergence-check.sh
./gcc/14/O1/concrete-divergence-check.sh

popd

# SQLite
pushd sqlite

./prepare.sh

./build.sh

./clang/18/O0/concrete-trace-tests-reduced.sh
./clang/18/O1/concrete-trace-tests-reduced.sh

./clang/18/O1/concrete-divergence-check.sh

popd
