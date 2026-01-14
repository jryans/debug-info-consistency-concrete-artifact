#!/usr/bin/env bash
set -eux

SCRIPT_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" &> /dev/null && pwd)

# Expects to run from this script's directory
if [ "${PWD}" != "${SCRIPT_DIR}" ]; then
  echo "Does not appear to be the expected directory, abort!"
  exit
fi

git clone https://git.ffmpeg.org/ffmpeg.git ../../../ffmpeg

pushd ../../../ffmpeg

git checkout e0723b7e4e22492275d476fcd30d759e1198bc5b
git am ${SCRIPT_DIR}/patches/*.patch

popd
