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

source "${SCRIPT_DIR}/../vars.sh"

export LLVM_COMPILER="clang"
export LLVM_COMPILER_PATH="$(llvm release-clang-lldb 13)/bin"

TARGET_NAME="ffmpeg"
TARGET_PATH="${TARGET_NAME}"

# Clang

  levels=(O0 O1)
versions=(18 18)

for i in ${!levels[*]}; do
  level=${levels[$i]}
  version=${versions[$i]}

  echo "## Building \`${TARGET_NAME}\` (Clang ${version}, ${level}) for binary with debug info"

  make clean
  git clean -f
  find . -name '*.o.*' -delete

  # JRS: For some reason, even though the wrapped steps above do produce a
  # linked, native binary, it does _not_ contain debug info, at least on macOS.
  # For now, work around this by building again normally.

  ## Build for binary with debug info
  cc_level_opts="CC_${level}_OPTS"
  make \
    CC="$(llvm release-clang-lldb ${version} clang)" \
    LD="$(llvm release-clang-lldb ${version} clang)" \
    ECFLAGS="${CC_COMMON_OPTS} ${CC_CLANG_OPTS} ${!cc_level_opts}" \
    LDFLAGS="${CC_COMMON_OPTS} ${CC_CLANG_OPTS} ${LD_COMMON_OPTS} -L./libavdevice -L./libavfilter -L./libavformat -L./libavcodec -L./libswresample -L./libswscale -L./libavutil"

  mkdir -p "${SCRIPT_DIR}/clang/${version}/${level}"

  ## TODO: Experiment with optimisation remarks from `-fsave-optimization-record`
  # ## Collect optimisation remarks
  # ( \
  #   find . -name '*.opt.yaml' | \
  #   xargs cat \
  #   > "${SCRIPT_DIR}/clang/${version}/${level}/${TARGET_NAME}.opt.yaml" \
  # )

  ## Gather debug info
  if [[ "$OS" == 'mac' ]]; then
    dsymutil --flat "${TARGET_PATH}"
    cp \
      "${TARGET_PATH}.dwarf" \
      "${SCRIPT_DIR}/clang/${version}/${level}/${TARGET_NAME}.dwarf"
  fi

  ## Store program binary
  cp \
    ${TARGET_PATH} \
    "${SCRIPT_DIR}/clang/${version}/${level}/${TARGET_NAME}"
done

# Clang source-based code coverage

level="O0"
version="18"
echo "## Building \`${TARGET_NAME}\` (Clang ${version}, ${level}) for code coverage"

make clean

## Build for code coverage
cc_level_opts="CC_${level}_OPTS"
make \
  CC="$(llvm release-clang-lldb ${version} clang)" \
  LD="$(llvm release-clang-lldb ${version} clang)" \
  ECFLAGS="${CC_COMMON_OPTS} ${CC_CLANG_OPTS} ${!cc_level_opts} -fprofile-instr-generate -fcoverage-mapping" \
  LDFLAGS="${CC_COMMON_OPTS} ${CC_CLANG_OPTS} ${LD_COMMON_OPTS} -L./libavdevice -L./libavfilter -L./libavformat -L./libavcodec -L./libswresample -L./libswscale -L./libavutil -fprofile-instr-generate"

mkdir -p "${SCRIPT_DIR}/clang/${version}/${level}-coverage"

## Store program binary
cp \
  ${TARGET_PATH} \
  "${SCRIPT_DIR}/clang/${version}/${level}-coverage/${TARGET_NAME}"

# GCC

  levels=(O0 O1 O2)
versions=(11 11 11)

for i in ${!levels[*]}; do
  version=${versions[$i]}
  level=${levels[$i]}

  echo "## Building \`${TARGET_NAME}\` (GCC ${version}, ${level}) for binary with debug info"

  make clean
  git clean -f
  find . -name '*.o.*' -delete

  ## Build for binary with debug info
  cc_level_opts="CC_${level}_OPTS"
  make \
    CC="$(gcc release ${version} gcc)" \
    LD="$(gcc release ${version} gcc)" \
    ECFLAGS="${CC_COMMON_OPTS} ${CC_GCC_OPTS} ${!cc_level_opts}" \
    LDFLAGS="${CC_COMMON_OPTS} ${CC_GCC_OPTS} ${LD_COMMON_OPTS} -L./libavdevice -L./libavfilter -L./libavformat -L./libavcodec -L./libswresample -L./libswscale -L./libavutil"

  mkdir -p "${SCRIPT_DIR}/gcc/${version}/${level}"

  # TODO: Try GCC's version of `-fsave-optimization-record`
  # ## Collect optimisation remarks
  # ( \
  #   find . -name '*.opt-record.json.gz' | \
  #   xargs cat \
  #   > "${SCRIPT_DIR}/gcc/${version}/${level}/${TARGET_NAME}.opt-record.json.gz" \
  # )

  ## Gather debug info
  if [[ "$OS" == 'mac' ]]; then
    dsymutil --flat "${TARGET_PATH}"
    cp \
      "${TARGET_PATH}.dwarf" \
      "${SCRIPT_DIR}/gcc/${version}/${level}/${TARGET_NAME}.dwarf"
  fi

  ## Store program binary
  cp \
    ${TARGET_PATH} \
    "${SCRIPT_DIR}/gcc/${version}/${level}/${TARGET_NAME}"
done

# Cleanup
echo "## Cleanup"
make clean
git clean -f
find . -name '*.o.*' -delete
