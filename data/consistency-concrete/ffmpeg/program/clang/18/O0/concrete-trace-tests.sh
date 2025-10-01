#!/usr/bin/env bash
set -ux

# Expects to run from program source directory
if [ "${PWD##*/}" != "ffmpeg" ]; then
  echo "Does not appear to be the expected directory, abort!"
  exit
fi

SCRIPT_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" &> /dev/null && pwd)
source "${SCRIPT_DIR}/../../../../../vars.sh"

TARGET_NAME="ffmpeg"

echo "## Collecting concrete trace of \`${TARGET_NAME}\`"

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

# Different trace variants to collect
# These map to different trace options in `vars.sh`
trace_variants=(default)

# We only collect a single trace variant at the moment
trace_variant="default"
trace_variant_opts="CON_TRACE_${trace_variant//-/_}_OPTS"
echo "### Collecting trace variant \`${trace_variant}\`: ${!trace_variant_opts}"

JOBS="$(echo "$(nproc) - 4" | bc)"

for test in ${tests[*]}; do
  (
    echo "### Analysing execution of \`${TARGET_NAME}\` test \`${test}\`"

    # Make trace directory used as temp storage during execution
    CON_TRACE_DIR="${SCRIPT_DIR}/concrete-trace/${test}/${trace_variant}/traces"
    export CON_TRACE_DIR
    # Remove first, just in case something left over from aborted run
    rm -rf ${CON_TRACE_DIR}
    mkdir -p ${CON_TRACE_DIR}

    make \
      fate-${test} \
      TARGET_EXEC="${SCRIPT_DIR}/concrete-trace-exec.sh"

    # Collect traces from all test processes
    # Sorted by file creation time from oldest to newest
    (
      cd ${CON_TRACE_DIR};
      # Keep individual process files, re-number for matching across runs
      i=0
      for trace in $(ls -tr); do
        mv ${trace} ../${i}
        let i+=1
      done
    )

    # Remove temp trace storage
    rm -rf ${CON_TRACE_DIR}
  ) &

  # Only a fixed number of jobs allowed in parallel
  if [[ $(jobs -r -p | wc -l) -ge ${JOBS} ]]; then
    wait -n
  fi
done

# Ensure all tasks have completed
wait
