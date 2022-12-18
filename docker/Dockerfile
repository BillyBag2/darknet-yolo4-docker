# Based on install instructions ...
# https://medium.com/geekculture/yolov4-darknet-installation-and-usage-on-your-system-windows-linux-8dec2cea6e81

# Get cuda docker image from...
# https://hub.docker.com/r/nvidia/cuda

#FROM nvidia/cuda:11.8.0-cudnn8-devel-ubuntu20.04
ARG CUDA_VERSION=11.4.3
FROM nvidia/cuda:${CUDA_VERSION}-cudnn8-devel-ubuntu20.04

# k80 which is compute 37. 
# My host says it is using nvidia driver 470.141.10 and supports cuda 11.4
# Looks like 11.5.x onwards does not support k80
# 11.4.1 works. (does 11.4.3?)
ARG DARKNET_MAKEFILE=Makefile.k80

# P4 which is compute 61
# My host says I am using nvidia driver 470.161.03 and supports cuda 11.4
# Will actually support 11.8.0 (and probably above or below this.)
# ARG MAKEFILE=Makefile.6.1

RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys A4B469963BF863CC
RUN apt-get update
# NOTE: If you atp-get opencv it will not be GPU accelerated.
# Inferance may be faster if GPU accelerated.
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y git python3-opencv libopencv-dev nano wget
RUN DEBIAN_FRONTEND=noninteractive cd ~ && git clone https://github.com/AlexeyAB/darknet.git

# darknet commit
# --------------
# 0faed3e60e52f742bbef43b83f6be51dd30f373e was the HEAD commit at time of writing.
# Remove/change for latest/specific version of darknet.
RUN DEBIAN_FRONTEND=noninteractive cd ~/darknet && git checkout 0faed3e60e52f742bbef43b83f6be51dd30f373e

# Replace Makefile.
COPY ${DARKNET_MAKEFILE} /root/darknet/Makefile

RUN cd ~/darknet && make
RUN cd ~/darknet && wget -nv https://github.com/AlexeyAB/darknet/releases/download/darknet_yolo_v3_optimal/yolov4.weights

