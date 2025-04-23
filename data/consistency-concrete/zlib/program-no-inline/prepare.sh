#!/usr/bin/env bash
set -eux

if [ "${PWD##*/}" != "zlib" ]; then
  echo "Does not appear to be the expected directory, abort!"
  exit
fi

# Nothing to do, `configure` will be called for each build
