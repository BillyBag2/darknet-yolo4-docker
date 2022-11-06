# darknet-yolo4-docker

This repository contains a Dockerfile to create container to support nVidia accelerated yolo4 training and inferance.

## Status

* GPU inference test runs on a docker host with ansingle nVidia K80.
* Training is untested.
* At time of writing Cuda 11.4.1 used. Compute range 3.5 - 8.6. See: "FROM" in [Dockerfile](docker/Dockerfile)
* darknet pinned at a specific commit in [Dockerfile](docker/Dockerfile)

# Tools versions etc.

See: [Dockerfile](docker/Dockerfile)

# Scripts

* [biuld.sh](build.sh) - Builds the docker image.
* [shell.sh](shell.sh) - Runs up a shell in a temporary container created from the loacal container.
* [test.sh](test.sh) - Runs a test in a temporary container using contents of test directory.

# TODO (Probably out of date.)

* Add first lines to scripts.
* Add training test.

