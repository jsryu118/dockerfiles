#!/bin/bash

# NVIDIA 런타임을 사용하는 Docker 컨테이너 실행
docker run --rm --name nav2 -it --runtime nvidia --privileged \
-v /dev:/dev \
-v /tmp/.X11-unix:/tmp/.X11-unix \
-v $HOME/.Xauthority:/root/.Xauthority:rw \
-v $HOME/dockerfiles/f1tenth/humble-cuda-12.4.1-cudnn-devel-ubuntu22.04/jsryu:/root/jsryu \
-v /etc/nv_tegra_release:/etc/nv_tegra_release \
-e DISPLAY=$DISPLAY \
-e QT_X11_NO_MITSHM=1 \
--net host \
jsryu118/ros:humble-cuda-12.4.1-cudnn-devel-ubuntu22.04 \
/bin/bash
