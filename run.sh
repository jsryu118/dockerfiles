#!/bin/bash
# xhost +localhost
# xhost +local:docker
# NVIDIA 런타임을 사용하는 Docker 컨테이너 실행
docker run --name morai -it --runtime nvidia --privileged \
-v /dev:/dev \
-v /media:/media \
-v /tmp/.X11-unix:/tmp/.X11-unix \
-v $HOME/.Xauthority:/root/.Xauthority:rw \
-e DISPLAY=$DISPLAY \
-e QT_X11_NO_MITSHM=1 \
-e NVIDIA_VISIBLE_DEVICES=all \
-e NVIDIA_DRIVER_CAPABILITIES=all \
--net host \
nvidia/cuda:11.8.0-cudnn8-devel-ubuntu20.04 \
/bin/bash

# nvidia/cuda:11.8.0-cudnn8-devel-ubuntu20.04

