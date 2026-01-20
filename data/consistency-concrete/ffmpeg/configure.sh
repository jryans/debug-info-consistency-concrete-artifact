#!/usr/bin/env bash
set -eux

SCRIPT_PATH=$(readlink -f "${BASH_SOURCE[0]}")
SCRIPT_DIR=$(dirname "${SCRIPT_PATH}")

# In bundled mode, jump to expected directory and invoke Nix shell
if [ -n "${BUNDLED:-}" -a -z "${IN_NIX_SHELL:-}" ]; then
  pushd /artifact/ffmpeg
  nix develop --command bash "${SCRIPT_PATH}"
  popd
  exit
fi

# Expects to run from program source directory
if [ "${PWD##*/}" != "ffmpeg" ]; then
  echo "Does not appear to be the expected directory, abort!"
  exit
fi
if [ ! -f "flake.nix" ]; then
  echo "Does not appear to be the expected directory, abort!"
  exit
fi

# Configure
# Focus on `ffmpeg` binary, disable other programs
# Disable documentation
# Disable platform-specific features
# Disable debugging and optimisation defaults
# Disable threads (Must use a commit before `760ce4bc0bd11f74f0851c0a662dd5cae888df83`)
./configure \
  --disable-ffplay \
  --disable-ffprobe \
  --disable-doc \
  --disable-protocol=tls \
  --disable-appkit \
  --disable-avfoundation \
  --disable-coreimage \
  --disable-metal \
  --disable-securetransport \
  --disable-audiotoolbox \
  --disable-videotoolbox \
  --disable-asm \
  --disable-debug \
  --disable-optimizations \
  --disable-stripping \
  --disable-pthreads \
  --samples=tests/fate/samples

# Disable dependency tracking
sd 'DEPFLAGS=.*$' 'DEPFLAGS=' ffbuild/config.mak

# Remove compiler-specific options
sd '\-mstack-alignment=16 \-Qunused-arguments ' '' ffbuild/config.mak
sd '\-Werror=partial-availability ' '' ffbuild/config.mak
sd ' -Wno-maybe-uninitialized' '' ffbuild/config.mak

# Download FATE test suite samples
make fate-rsync
