## Artifact

This is the artifact for the [OOPSLA 2026 paper][paper]:

Debugging Debugging Information Using Dynamic Call Trees

by J. Ryan Stinnett and Stephen Kell.

TODO: Add DOI badge

<!-- [![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.10568392.svg)](https://doi.org/10.5281/zenodo.10568392) -->

## Setup

We highly recommend using this artifact via the prepared Docker image
available from Zenodo. Along with the scripts in this repo, the Docker image
also includes pre-compiled toolchains and tools, which significantly simplifies
the setup process.

```sh
$ docker image load < <image.tar.zstd>
```

Portions of this artifact make use of the SPEC CPU 2017 benchmark,
which is not publicly available.
If you have access to the SPEC CPU 2017 1.0.2 installation media
and would like to exercise this part of the artifact,
we recommend mapping this into the artifact Docker container.

```sh
$ docker run -it --rm --mount type=bind,src=<SPEC ISO dir>,dst=/artifact/spec/iso,readonly <image>
```

If you don't have access to SPEC CPU 2017,
you can run the Docker image without this.

```sh
$ docker run -it --rm <image>
```

The `data` directory includes various scripts and notebooks used to produce the
figures included in the paper.

The `figures` directory contains the figures as shown in the published paper.
They've been archived in a `figures/paper` directory for potential comparison
during your own execution of the artifact.

## Evaluation

If you prefer a hands-off, automated approach to exercising this artifact,
you can:

1. Change into `data/consistency-concrete`, as some scripts expect to run from
   there.
2. Run `run-pkgs-reduced.sh` to prepare, build, trace, and check FFmpeg, Git,
   and SQLite.
   This will take approx. XXX hours.
3. Run `run-spec.sh` to prepare, build, trace, and check SPEC CPU 2017
   benchmarks.
   This will take approx. XXX hours.
   (This requires the SPEC installation media.)
4. Run `plot.sh` to save new figures to the `figures` directory using the
   collected divergence data.

The image `git/divergences-compilers-levels.png` matches Figure 12 in the paper.
The image `divergences-packages.png` matches Figure 13 in the paper.

If you prefer to run each step manually,
we recommend perusing the run scripts above
and running the scripts they execute as you like.
The prepare and build steps are one-time setup operations,
so you may wish to do those separately first.
The trace and check steps can be re-run multiple times if desired.

Some scripts currently use system-specific paths to locate compilers and other
tools, so some modifications may be needed if you are running this artifact
directly without using the Docker image.
Review `vars.sh` and adjust path values as needed.

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
