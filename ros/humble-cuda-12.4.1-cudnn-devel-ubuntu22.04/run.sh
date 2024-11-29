docker run --rm --name nav2 -it --runtime nvidia --privileged \
-v /dev:/dev \
-v /tmp/.X11-unix:/tmp/.X11-unix \
-v $HOME/.Xauthority:/root/.Xauthority:rw \
-v /etc/nv_tegra_release:/etc/nv_tegra_release \
-e DISPLAY=$DISPLAY \
-e QT_X11_NO_MITSHM=1 \
--net host \
jsryu118/ros:humble-cuda-12.4.1-cudnn-devel-ubuntu22.04 \
/bin/bash
