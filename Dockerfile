FROM nixos/nix:2.28.4

RUN \
  nix-channel --add https://nixos.org/channels/nixos-24.11 nixpkgs && \
  nix-channel --update && \
  nix-env -iA \
    nixpkgs.gcc \
    nixpkgs.glibc \
    nixpkgs.patchelf \
    nixpkgs.sd \
    nixpkgs.zlib \
    nixpkgs.zstd

ENV BUNDLED=1

WORKDIR /artifact

COPY Research/Papers/debug-info-consistency-concrete-artifact .

COPY Projects/LLVM/llvm/builds/release-clang-lldb-13 compilers/clang/13
RUN \
  patchelf --set-interpreter \
    /nix/store/wn7v2vhyyyi6clcyn0s9ixvl7d4d87ic-glibc-2.40-36/lib/ld-linux-x86-64.so.2 \
    compilers/clang/13/bin/clang && \
  ln -s \
    /nix/store/hh698a2nnpqr47lh52n26wi8fiah3hid-gcc-13.3.0-lib/lib/libstdc++.so.6 \
    /nix/store/b6mjyiadysqlh7nps52faznnqmp32604-zlib-1.3.1/lib/libz.so.1 \
    compilers/clang/13/lib

COPY Projects/LLVM/llvm/builds/release-clang-lldb-18 compilers/clang/18
RUN \
  patchelf --set-interpreter \
    /nix/store/wn7v2vhyyyi6clcyn0s9ixvl7d4d87ic-glibc-2.40-36/lib/ld-linux-x86-64.so.2 \
    compilers/clang/18/bin/clang && \
  ln -s \
    /nix/store/hh698a2nnpqr47lh52n26wi8fiah3hid-gcc-13.3.0-lib/lib/libstdc++.so.6 \
    /nix/store/b6mjyiadysqlh7nps52faznnqmp32604-zlib-1.3.1/lib/libz.so.1 \
    compilers/clang/18/lib

COPY Projects/GNU/gcc/builds/release-11 compilers/gcc/11
RUN \
  patchelf --set-interpreter \
    /nix/store/wn7v2vhyyyi6clcyn0s9ixvl7d4d87ic-glibc-2.40-36/lib/ld-linux-x86-64.so.2 \
    compilers/gcc/11/bin/gcc

COPY Projects/GNU/gcc/builds/release-14 compilers/gcc/14
RUN \
  patchelf --set-interpreter \
    /nix/store/wn7v2vhyyyi6clcyn0s9ixvl7d4d87ic-glibc-2.40-36/lib/ld-linux-x86-64.so.2 \
    compilers/gcc/14/bin/gcc

COPY Projects/debug-info-concrete-check/binary-instrumentation tools/binary-instrumentation
COPY Projects/QBDI/QBDI tools/binary-instrumentation/build/QBDI
RUN \
  patchelf --add-rpath '$ORIGIN' \
    tools/binary-instrumentation/build/libcollect-trace-preload.so && \
  ln -s \
    QBDI/build/lib64/libQBDI.so \
    /nix/store/hh698a2nnpqr47lh52n26wi8fiah3hid-gcc-13.3.0-lib/lib/libstdc++.so.6 \
    /nix/store/b6mjyiadysqlh7nps52faznnqmp32604-zlib-1.3.1/lib/libz.so.1 \
    /nix/store/8pys6a47askf0g75a1k73p3rx2wim7m6-zstd-1.5.6/lib/libzstd.so.1 \
    tools/binary-instrumentation/build

COPY Projects/debug-info-concrete-check/compare-traces tools/compare-traces
RUN \
  patchelf --set-interpreter \
    /nix/store/wn7v2vhyyyi6clcyn0s9ixvl7d4d87ic-glibc-2.40-36/lib/ld-linux-x86-64.so.2 \
    tools/compare-traces/target/release/debug-info-concrete-compare-traces
