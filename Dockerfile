FROM nixos/nix:2.28.4

RUN \
  nix-channel --update && nix-env -iA \
  nixpkgs.glibc \
  nixpkgs.patchelf \
  nixpkgs.gcc \
  nixpkgs.zlib

WORKDIR /artifact

COPY Research/Papers/debug-info-consistency-concrete-artifact .

COPY Projects/LLVM/llvm/builds/release-clang-lldb-13 compilers/clang/13
RUN \
  patchelf --set-interpreter \
  /nix/store/wn7v2vhyyyi6clcyn0s9ixvl7d4d87ic-glibc-2.40-36/lib/ld-linux-x86-64.so.2 \
  compilers/clang/13/bin/clang \
  && \
  ln -s \
  /nix/store/xc0ga87wdclrx54qjaryahkkmkmqi9qz-gcc-15.2.0-lib/lib/libstdc++.so.6 \
  /nix/store/c2qsgf2832zi4n29gfkqgkjpvmbmxam6-zlib-1.3.1/lib/libz.so.1 \
  compilers/clang/13/lib

COPY Projects/LLVM/llvm/builds/release-clang-lldb-18 compilers/clang/18
RUN \
  patchelf --set-interpreter \
  /nix/store/wn7v2vhyyyi6clcyn0s9ixvl7d4d87ic-glibc-2.40-36/lib/ld-linux-x86-64.so.2 \
  compilers/clang/18/bin/clang \
  && \
  ln -s \
  /nix/store/xc0ga87wdclrx54qjaryahkkmkmqi9qz-gcc-15.2.0-lib/lib/libstdc++.so.6 \
  /nix/store/c2qsgf2832zi4n29gfkqgkjpvmbmxam6-zlib-1.3.1/lib/libz.so.1 \
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
