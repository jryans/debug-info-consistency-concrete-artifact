#!/usr/bin/env bash
set -eux

# TODO: Arrange a real script for this

# 1. Extract SPEC CPU 2017 distribution media
# 2. Review quick start docs
#    (https://www.spec.org/cpu2017/Docs/quick-start.html)
# 3. Build the `intrate` benchmarks:
#    runcpu --config=gcc-linux-x86.cfg --action=buildsetup intrate
# 4. Apply patches to several modified projects from `patches` directory
# 5. Run the `build.sh` in each benchmark's generated
#    `build_base_mytest-m64.0000` directory
