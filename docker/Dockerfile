# Based on install instructions ...
# https://medium.com/geekculture/yolov4-darknet-installation-and-usage-on-your-system-windows-linux-8dec2cea6e81

# Includes: nano
FROM nvidia/cuda:10.0-cudnn7-devel

RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys A4B469963BF863CC
RUN apt-get update
# NOTE: If you atp-get opencv it will not be GPU accelerated.
# Inferance may be faster if GPU accelerated.
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y git python-opencv libopencv-dev nano
RUN DEBIAN_FRONTEND=noninteractive cd ~ && git clone https://github.com/AlexeyAB/darknet.git

# TODO: Edit make file?
#
# Suggested Makefile edits
# ------------------------
# GPU=1
# CUDNN=1
# CUDNN_HALF=1
# OPENCV=1
# ------------------------
RUN cp ~/darknet/Makefile ~/darknet/Makefile.bak
RUN tail -n +5 ~/darknet/Makefile > ~/darknet/Makefile.trim
RUN echo "GPU=1" > ~/darknet/Makefile
RUN echo "CUDNN=1" >> ~/darknet/Makefile
RUN echo "CUDNN_HALF=1" >> ~/darknet/Makefile
RUN echo "OPENCV=1" >> ~/darknet/Makefile
RUN cat ~/darknet/Makefile.trim >> ~/darknet/Makefile

# Compute capability. See: https://en.wikipedia.org/wiki/CUDA
# Model: Compute
#------+--------
# K80  : 3.7
# -----+--------
#RUN cd ~/darknet && make
