## Artifact

This is the artifact for the [OOPSLA 2026 paper][paper]:

Debugging Debugging Information Using Dynamic Call Trees

by J. Ryan Stinnett and Stephen Kell.

TODO: Add DOI badge

<!-- [![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.10568392.svg)](https://doi.org/10.5281/zenodo.10568392) -->

## Usage

TODO: Recommend Docker image

The `data` directory includes various scripts and notebooks used to produce the
figures included in the paper.

The `figures` directory contains the figures as shown in the published paper.

The basic pipeline to reproduce a figure for a given program under analysis
(e.g. Git which is used in most figures) is:

1. Check out project source at commit in the table below
2. Run `prepare.sh` in the project source directory
3. Run `build.sh` in the project source directory

TODO: 4. Run `???.sh` in the `data/[project]` directory of this repo

5. Use the notebook in `data/[project]`

Some scripts currently use system-specific paths to locate compilers and other
tools, so some modifications may be needed. Review `vars.sh` and adjust path
values as needed.

## Requirements

Source code for each project under analysis will be needed. For the paper, the
following projects and commits / versions were used:

| Project       | Commit / Version |
| ------------- | ---------------- |
| FFmpeg        | e0723b7e4e22492275d476fcd30d759e1198bc5b |
| Git           | bd5df96b7916c1e8a9300ab477aec047b3901cd4 |
| SQLite        | 8ed5e7365e6f12f427910188bbf6b254daad2ef6 |
| SPEC CPU 2017 | 1.0.2                                    |

Some of these projects were patched in various ways
to integrate their test suites with our experiments.
Those patches are included in this artifact.
Each project has a `prepare.sh` script
which will retrieve the project sources,
checkout out the expected commit above,
and then apply additional patches.

In addition, some other tools are invoked by scripts here:

| Tools    | Commit |
| -------- | ------ |
| [debug-info-concrete-check] | 0f349afdceb00b2f71d87e841295c8376ec3ccd6 |

The following compiler versions are used:

- Clang 13.0.0
- Clang 18.1.0
- GCC 11.1.0
- GCC 14.1.0

Our results were collected on Linux (NixOS 25.05) for the x86-64 architecture.
Other platforms may give different results, as some compilers may enable
different debug info features by default for each target platform.

[paper]:
  TODO
[debug-info-concrete-check]:
  https://github.com/jryans/debug-info-concrete-check
