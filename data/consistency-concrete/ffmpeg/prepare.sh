#!/usr/bin/env bash
set -eux

SCRIPT_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" &> /dev/null && pwd)

# Expects to run from this script's directory
if [ "${PWD}" != "${SCRIPT_DIR}" ]; then
  echo "Does not appear to be the expected directory, abort!"
  exit
fi

echo "## Preparing \`ffmpeg\`"

git clone https://git.ffmpeg.org/ffmpeg.git ../../../ffmpeg

pushd ../../../ffmpeg

git checkout e0723b7e4e22492275d476fcd30d759e1198bc5b
git am ${SCRIPT_DIR}/patches/*.patch

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

popd
