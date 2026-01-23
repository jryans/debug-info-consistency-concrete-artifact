#!/usr/bin/env bash
set -eux

SCRIPT_PATH=$(readlink -f "${BASH_SOURCE[0]}")
SCRIPT_DIR=$(dirname "${SCRIPT_PATH}")

# Expects to run from this script's directory
if [ "${PWD}" != "${SCRIPT_DIR}" ]; then
  echo "Does not appear to be the expected directory, abort!"
  exit
fi

# SPEC CPU 2017
pushd spec-cpu-2017

./prepare.sh

benchmarks=(
  502.gcc_r
  505.mcf_r
  523.xalancbmk_r
  525.x264_r
  531.deepsjeng_r
  541.leela_r
  557.xz_r
)

for benchmark in ${benchmarks[*]}; do
  pushd ${benchmark}

  ./build.sh

  ./clang/18/O0/concrete-trace-tests.sh
  ./clang/18/O1/concrete-trace-tests.sh

  ./clang/18/O1/concrete-divergence-check.sh

  popd
done

popd
