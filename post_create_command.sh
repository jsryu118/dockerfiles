#!/bin/bash

sudo rm /etc/apt/apt.conf.d/docker-clean

sudo apt update
sudo apt install \
    wget \
    git \
    unzip \
    python3-catkin-tools \
    base-completion 


