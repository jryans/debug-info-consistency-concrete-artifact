#!/usr/bin/env bash
set -eux

if [ "${PWD##*/}" != "ffmpeg" ]; then
  echo "Does not appear to be the expected directory, abort!"
  exit
fi

SCRIPT_DIR=$(dirname "${BASH_SOURCE[0]}")
source "${SCRIPT_DIR}/../../vars.sh"

echo "## Preparing \`ffmpeg\`"

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
  --disable-pthreads

# Disable dependency tracking
sd 'DEPFLAGS=.*$' 'DEPFLAGS=' ffbuild/config.mak

# Remove compiler-specific options
sd '\-mstack-alignment=16 \-Qunused-arguments ' '' ffbuild/config.mak
sd '\-Werror=partial-availability ' '' ffbuild/config.mak
