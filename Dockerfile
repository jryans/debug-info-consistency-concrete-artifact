FROM nixos/nix:2.30.3

RUN \
  mkdir -p ~/.config/nix && \
  echo "experimental-features = flakes nix-command" >> ~/.config/nix/nix.conf && \
  nix-channel --add https://nixos.org/channels/nixos-24.11 nixpkgs && \
  nix-channel --update && \
  nix-env -iA \
    nixpkgs.bc \
    nixpkgs.gcc \
    nixpkgs.glibc \
    nixpkgs.gmp \
    nixpkgs.libmpc \
    nixpkgs.mpfr \
    nixpkgs.patch \
    nixpkgs.patchelf \
    nixpkgs.sd \
    nixpkgs.vim \
    nixpkgs.zlib \
    nixpkgs.zstd && \
  nix-env --set-flag priority 0 gcc-wrapper-13.3.0 && \
  nix-env -iA \
    nixpkgs.clang && \
  git config --global user.email "artifact.user@bundled.container" && \
  git config --global user.name "Artifact User"

ENV BUNDLED=1

WORKDIR /artifact

COPY Research/Papers/debug-info-consistency-concrete-artifact .

# Arrange ELF interpreter location expected by copied in binaries
RUN \
  mkdir -p /nix/store/maxa3xhmxggrc5v2vc0c3pjb79hjlkp9-glibc-2.40-66/lib && \
  ln -s \
    $(patchelf --print-interpreter $(which bash)) \
    /nix/store/maxa3xhmxggrc5v2vc0c3pjb79hjlkp9-glibc-2.40-66/lib/ld-linux-x86-64.so.2

COPY Projects/LLVM/llvm/builds/release-clang-lldb-13 compilers/clang/13
RUN \
  ln -s \
    /nix/store/hh698a2nnpqr47lh52n26wi8fiah3hid-gcc-13.3.0-lib/lib/libstdc++.so.6 \
    /nix/store/b6mjyiadysqlh7nps52faznnqmp32604-zlib-1.3.1/lib/libz.so.1 \
    compilers/clang/13/lib

COPY Projects/LLVM/llvm/builds/release-clang-lldb-18 compilers/clang/18
RUN \
  ln -s \
    /nix/store/hh698a2nnpqr47lh52n26wi8fiah3hid-gcc-13.3.0-lib/lib/libstdc++.so.6 \
    /nix/store/b6mjyiadysqlh7nps52faznnqmp32604-zlib-1.3.1/lib/libz.so.1 \
    compilers/clang/18/lib

COPY Projects/GNU/gcc/builds/release-11 compilers/gcc/11
RUN \
  patchelf \
    --add-rpath /nix/store/zpwp6k2kldm84ql88sj1q0i8iyivi7ms-gmp-with-cxx-6.3.0/lib \
    compilers/gcc/11/libexec/gcc/x86_64-pc-linux-gnu/11.1.0/cc1 && \
  patchelf \
    --add-rpath /nix/store/sqib6gfcgyxhv6cqwgb57prila41c575-libmpc-1.3.1/lib \
    compilers/gcc/11/libexec/gcc/x86_64-pc-linux-gnu/11.1.0/cc1 && \
  patchelf \
    --add-rpath /nix/store/sxh73xj9wphjldm8axwm2s0hijylp6wx-mpfr-4.2.1/lib \
    compilers/gcc/11/libexec/gcc/x86_64-pc-linux-gnu/11.1.0/cc1 && \
  patchelf \
    --add-rpath /nix/store/zpwp6k2kldm84ql88sj1q0i8iyivi7ms-gmp-with-cxx-6.3.0/lib \
    compilers/gcc/11/libexec/gcc/x86_64-pc-linux-gnu/11.1.0/cc1plus && \
  patchelf \
    --add-rpath /nix/store/sqib6gfcgyxhv6cqwgb57prila41c575-libmpc-1.3.1/lib \
    compilers/gcc/11/libexec/gcc/x86_64-pc-linux-gnu/11.1.0/cc1plus && \
  patchelf \
    --add-rpath /nix/store/sxh73xj9wphjldm8axwm2s0hijylp6wx-mpfr-4.2.1/lib \
    compilers/gcc/11/libexec/gcc/x86_64-pc-linux-gnu/11.1.0/cc1plus

COPY Projects/GNU/gcc/builds/release-14 compilers/gcc/14
RUN \
  patchelf \
    --add-rpath /nix/store/zpwp6k2kldm84ql88sj1q0i8iyivi7ms-gmp-with-cxx-6.3.0/lib \
    compilers/gcc/14/libexec/gcc/x86_64-pc-linux-gnu/14.1.0/cc1 && \
  patchelf \
    --add-rpath /nix/store/sqib6gfcgyxhv6cqwgb57prila41c575-libmpc-1.3.1/lib \
    compilers/gcc/14/libexec/gcc/x86_64-pc-linux-gnu/14.1.0/cc1 && \
  patchelf \
    --add-rpath /nix/store/sxh73xj9wphjldm8axwm2s0hijylp6wx-mpfr-4.2.1/lib \
    compilers/gcc/14/libexec/gcc/x86_64-pc-linux-gnu/14.1.0/cc1 && \
  patchelf \
    --add-rpath /nix/store/zpwp6k2kldm84ql88sj1q0i8iyivi7ms-gmp-with-cxx-6.3.0/lib \
    compilers/gcc/14/libexec/gcc/x86_64-pc-linux-gnu/14.1.0/cc1plus && \
  patchelf \
    --add-rpath /nix/store/sqib6gfcgyxhv6cqwgb57prila41c575-libmpc-1.3.1/lib \
    compilers/gcc/14/libexec/gcc/x86_64-pc-linux-gnu/14.1.0/cc1plus && \
  patchelf \
    --add-rpath /nix/store/sxh73xj9wphjldm8axwm2s0hijylp6wx-mpfr-4.2.1/lib \
    compilers/gcc/14/libexec/gcc/x86_64-pc-linux-gnu/14.1.0/cc1plus

COPY Projects/debug-info-concrete-check/binary-instrumentation tools/binary-instrumentation
COPY Projects/QBDI/QBDI tools/binary-instrumentation/build/QBDI
RUN \
  patchelf --add-rpath '$ORIGIN' \
    tools/binary-instrumentation/build/libcollect-trace-preload.so && \
  ln -s \
    QBDI/build/lib64/libQBDI.so \
    /nix/store/hh698a2nnpqr47lh52n26wi8fiah3hid-gcc-13.3.0-lib/lib/libstdc++.so.6 \
    /nix/store/b6mjyiadysqlh7nps52faznnqmp32604-zlib-1.3.1/lib/libz.so.1 \
    /nix/store/h2qap7znf2iflyr7g567lnnzsnh0p4x8-zstd-1.5.6/lib/libzstd.so.1 \
    tools/binary-instrumentation/build

COPY Projects/debug-info-concrete-check/compare-traces tools/compare-traces

# Redistributable binaries only, customised for NixOS
# Installation media must be mounted as well to make use of benchmark
COPY Projects/Benchmarks/spec-cpu-2017/bin spec/bin
