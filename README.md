# darknet-yolo4-docker

This repository contains a Dockerfile to create container to support nVidia accelerated yolo4 training and inferance.

## Status

* GPU inference test runs on a docker host with ansingle nVidia K80.
* GPU training runs.
* Two args for the builf file.
    * CUDA_VERSION
    * DARKNET_MAKEFILE
* darknet pinned at a specific commit in [Dockerfile](docker/Dockerfile)

| Card | compute |   Cuda | Ext  |
|------|---------|--------|------|
| K80  | 3.7     | 11.4.3 | None |
| P4   | 6.7     | 11.8.0 | 6.1  |


# Tools versions etc.

See: [Dockerfile](docker/Dockerfile)

# Scripts

* [biuld.sh](build.sh) - Builds the docker image.
* [shell.sh](shell.sh) - Runs up a shell in a temporary container created from the loacal container.
* [test.sh](test.sh) - Runs a test in a temporary container using contents of test directory.

# TODO (Probably out of date.)

* Add first lines to scripts.
* Add training test.
* Add support for nVidia P4
* Add support for infurence on a none accelerated platform, eg cloud VM?
* P4 could use Cuda 12?
