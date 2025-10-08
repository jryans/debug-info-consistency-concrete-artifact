#!/usr/bin/env bash
set -ux

SCRIPT_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" &> /dev/null && pwd)

# Expects to run from program build directory
if [ "${PWD##*/}" != "ffmpeg" ]; then
  echo "Does not appear to be the expected directory, abort!"
  exit
fi

source "${SCRIPT_DIR}/../../../../../vars.sh"

TARGET_NAME="ffmpeg"

echo "## Collecting coverage using reduced concrete trace test suite"

PROFILE_BASE_DIR="${SCRIPT_DIR}/coverage/trace"
rm -rf ${PROFILE_BASE_DIR}
PROFILE_DIR="${PROFILE_BASE_DIR}/profiles"
mkdir -p ${PROFILE_DIR}
LLVM_PROFILE_FILE="${PROFILE_DIR}/%p.profdata"
export LLVM_PROFILE_FILE

# Tests from the target's test suite to analyse
tests=(
  aac-fixed-al04_44
  ac3-2.0
  adpcm-creative
  amrnb-4k75
  amrwb-6k60
  atrac1-1
  binkaudio-dct
  bmp-1bit
  caf-demux
  cdxl-bitline-ham6
  cover-art-flac
  dca-core
  bink-demux
  dfa1
  dpcm-sierra
  bsf-dv-error-marker
  ea-cdata
  mapchan-silent-mono
  filter-adelay
  fitsdec-bitpix-32
  gif-gray
  hap1
  hevc-bsf-mp4toannexb
  hls-init-time
  aliaspix-gray
  lavf-ogg
  lavf-gray.pam
  lavf-gray.fits
  loco-rgb
  matroska-remux
  mp3-float-conf-compl
  mpc7-demux
  mpeg4-packed
  mpegps-remuxed-pcm-demux
  mxf-essencegroup-demux
  oma-demux
  iff-pcm
  pixlet-rgb
  prores-gray
  qtrle-1bit
  fraps-v1
  segment-mp4-to-ts
  speedhq-422
  sub-jacosub
  truehd-core-bsf
  magicyuv-y400i
  vorbis-10
  theora-offset
  vqf-demux
  webm-dash-manifest
  wmapro-2ch
)

JOBS="$(echo "$(nproc) - 4" | bc)"

for test in ${tests[*]}; do
  (
    echo "### Analysing coverage of \`${TARGET_NAME}\` test \`${test}\`"

    make \
      fate-${test} \
      TARGET_EXEC="${SCRIPT_DIR}/coverage-exec.sh"
  ) &

  # Only a fixed number of jobs allowed in parallel
  if [[ $(jobs -r -p | wc -l) -ge ${JOBS} ]]; then
    wait -n
  fi
done

# Ensure all tasks have completed
wait

echo "## Merging raw profiles into indexed profile"

find ${PROFILE_BASE_DIR} -type f -name '*.profdata' | \
  $(llvm release-clang-lldb-18 llvm-profdata) \
    merge \
    -f - \
    -o "${PROFILE_BASE_DIR}/merged.profdata"

# Remove raw profiles, takes up too much space
rm -rf ${PROFILE_DIR}

echo "## Reporting coverage"

$(llvm release-clang-lldb-18 llvm-cov) \
  report \
  -instr-profile "${PROFILE_BASE_DIR}/merged.profdata" \
  ${SCRIPT_DIR}/${TARGET_NAME} > \
  "${PROFILE_BASE_DIR}/coverage"
