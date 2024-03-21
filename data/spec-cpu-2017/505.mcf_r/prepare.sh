#!/usr/bin/env bash
set -eux

if [ "${PWD##*/}" != "build_base_mytest.0000" ]; then
  echo "Does not appear to be the expected directory, abort!"
  exit
fi

# Nothing to do, `make` is all you need
