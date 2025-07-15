#!/bin/bash

# ceres install
sudo apt install libceres-dev

# gtsam install
wget https://github.com/borglab/gtsam/archive/4.0.0-alpha2.zip
unzip 4.0.0-alpha2.zip
cd gtsam-4.0.0-alpha2
mkdir build && cd build
cmake ..
sudo make install


