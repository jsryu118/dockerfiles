# Use NVIDIA base image
FROM nvidia/cuda:12.4.1-cudnn-devel-ubuntu22.04

# Set environment variables
ENV LANG=en_US.UTF-8 \
    LC_ALL=en_US.UTF-8 \
    DEBIAN_FRONTEND=noninteractive

# Update package lists and install prerequisites
RUN apt-get update && apt-get install -y \
    sudo \
    locales \
    curl \
    software-properties-common && \
    locale-gen en_US en_US.UTF-8 && \
    update-locale LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8 && \
    echo "export LANG=en_US.UTF-8" >> /etc/environment && \
    echo "export LC_ALL=en_US.UTF-8" >> /etc/environment && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

# Add ROS 2 repository and key
RUN curl -sSL https://raw.githubusercontent.com/ros/rosdistro/master/ros.key -o /usr/share/keyrings/ros-archive-keyring.gpg && \
    echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/ros-archive-keyring.gpg] http://packages.ros.org/ros2/ubuntu $(. /etc/os-release && echo $UBUNTU_CODENAME) main" \
    | tee /etc/apt/sources.list.d/ros2.list > /dev/null

# Install ROS 2 Humble
RUN apt-get update && apt-get install -y \
    ros-humble-desktop \
    ros-dev-tools && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

# Source ROS 2 setup script on container startup
RUN echo "source /opt/ros/humble/setup.bash" >> /root/.bashrc
