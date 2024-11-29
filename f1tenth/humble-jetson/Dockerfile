# Base image
FROM dustynv/ros:humble-desktop-l4t-r36.4.0

# 환경 변수 설정
ENV DEBIAN_FRONTEND=noninteractive

# pip 및 Python 환경 설치
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    python3-pip python3-setuptools python3-venv && \
    pip3 install --upgrade pip && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# ROS 의존성 설치 및 diagnostic_updater 설치
RUN apt-get update && \
    apt-get install -y ros-humble-diagnostic-updater && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# 작업공간 생성 및 설정
WORKDIR /root/test_ws
RUN mkdir -p src

# f1tenth_race_stack 클론 및 서브모듈 업데이트
RUN cd src && \
    git clone --recursive https://github.com/jsryu118/f1tenth_race_stack.git && \
    cd f1tenth_race_stack && \
    git submodule update --init --recursive

# ROS2 의존성 설치
RUN apt-get update && \
    rosdep update && \
    rosdep install --from-paths src --ignore-src -r -y --rosdistro humble

# # 작업공간 빌드
# RUN . /opt/ros/humble/setup.sh && \
#     export CMAKE_PREFIX_PATH=$CMAKE_PREFIX_PATH:/opt/ros/humble && \
#     colcon build

# 컨테이너 기본 실행 쉘
COPY ros_entrypoint.sh /
ENTRYPOINT ["/ros_entrypoint.sh"]
CMD ["/bin/bash"]
