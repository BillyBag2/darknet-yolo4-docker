# Based on install instructions ...
# https://medium.com/geekculture/yolov4-darknet-installation-and-usage-on-your-system-windows-linux-8dec2cea6e81

# I have a k80 which is compute 37. 
# My host says it is using nvidia driver 470.141.10 and supports cuda 11.4

# Get cuda docker image from...
# https://hub.docker.com/r/nvidia/cuda

#FROM nvidia/cuda:10.0-cudnn7-devel
FROM nvidia/cuda:11.4.1-cudnn8-devel-ubuntu20.04
#FROM nvidia/cuda:10.2-cudnn8-devel-ubuntu18.04

RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys A4B469963BF863CC
RUN apt-get update
# NOTE: If you atp-get opencv it will not be GPU accelerated.
# Inferance may be faster if GPU accelerated.
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y git python3-opencv libopencv-dev nano wget
RUN DEBIAN_FRONTEND=noninteractive cd ~ && git clone https://github.com/AlexeyAB/darknet.git

# This was the HEAD commit at time of writing. Remove/change for updates.
RUN DEBIAN_FRONTEND=noninteractive cd ~/darknet && git checkout 0faed3e60e52f742bbef43b83f6be51dd30f373e

# Replace Makefile.
COPY Makefile.k80 /root/darknet/Makefile

RUN cd ~/darknet && make
RUN cd ~/darknet && wget -nv https://github.com/AlexeyAB/darknet/releases/download/darknet_yolo_v3_optimal/yolov4.weights

