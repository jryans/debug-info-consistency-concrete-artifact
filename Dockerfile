FROM nixos/nix:2.28.4

RUN \
  nix-channel --add https://nixos.org/channels/nixos-24.11 nixpkgs && \
  nix-channel --update && \
  nix-env -iA \
  nixpkgs.glibc \
  nixpkgs.patchelf \
  nixpkgs.gcc \
  nixpkgs.zlib

ENV BUNDLED=1

WORKDIR /artifact

COPY Research/Papers/debug-info-consistency-concrete-artifact .

COPY Projects/LLVM/llvm/builds/release-clang-lldb-13 compilers/clang/13
RUN \
  patchelf --set-interpreter \
  /nix/store/wn7v2vhyyyi6clcyn0s9ixvl7d4d87ic-glibc-2.40-36/lib/ld-linux-x86-64.so.2 \
  compilers/clang/13/bin/clang \
  && \
  ln -s \
  /nix/store/hh698a2nnpqr47lh52n26wi8fiah3hid-gcc-13.3.0-lib/lib/libstdc++.so.6 \
  /nix/store/b6mjyiadysqlh7nps52faznnqmp32604-zlib-1.3.1/lib/libz.so.1 \
  compilers/clang/13/lib

COPY Projects/LLVM/llvm/builds/release-clang-lldb-18 compilers/clang/18
RUN \
  patchelf --set-interpreter \
  /nix/store/wn7v2vhyyyi6clcyn0s9ixvl7d4d87ic-glibc-2.40-36/lib/ld-linux-x86-64.so.2 \
  compilers/clang/18/bin/clang \
  && \
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
