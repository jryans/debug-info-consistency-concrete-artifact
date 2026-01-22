#!/usr/bin/env bash
set -eux

SCRIPT_PATH=$(readlink -f "${BASH_SOURCE[0]}")
SCRIPT_DIR=$(dirname "${SCRIPT_PATH}")

# In bundled mode, invoke Nix shell
if [ -n "${BUNDLED:-}" -a -z "${IN_NIX_SHELL:-}" ]; then
  nix develop --command bash "${SCRIPT_PATH}"
  exit
fi

# Expects to run from this script's directory
if [ "${PWD}" != "${SCRIPT_DIR}" ]; then
  echo "Does not appear to be the expected directory, abort!"
  exit
fi

echo "## Preparing SPEC CPU 2017"

# Check for installation media
if [ ! -d "../../../spec/iso" ]; then
  echo "SPEC CPU 2017 installation media not found, abort!"
  exit
fi

pushd ../../../spec

# Install benchmark
tar -xvf iso/install_archives/cpu2017.tar.xz

# Copy benchmark config
cp ${SCRIPT_DIR}/config/* ./config/

source ./shrc

# Appease utils with empty metadata
touch MANIFEST TOOLS.sha512

# Setup build for each benchmark
SPEC_NOCHECK=1 runcpu --config=gcc-linux-x86.cfg --action=buildsetup \
  502 505 523 525 531 541 557

# Patch benchmarks where needed
pushd benchspec/CPU
patch -p 1 < ${SCRIPT_DIR}/patches/541.leela_r.patch
patch -p 1 < ${SCRIPT_DIR}/patches/557.xz_r.patch
popd

popd
