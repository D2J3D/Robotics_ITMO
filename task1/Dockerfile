FROM osrf/ros:noetic-desktop-full

ARG UID
ARG GID

# Create user and set environment
RUN groupadd -g ${GID} itmogroup && \
    useradd -m -u ${UID} -g itmogroup itmo && \
    mkdir -p /home/itmo/labs && \
    chmod -R 777 /home/itmo/

# Install dependencies
RUN apt-get update && apt-get install -y --no-install-recommends \
    curl \
    wget \
    python3-pip \
    python3-tk \
    lsb-release \
    vim \
    git \
    tmux \
    tree \
    liburdfdom-tools \
    && rm -rf /var/lib/apt/lists/*

# ROS Environment Setup
RUN echo "source /opt/ros/noetic/setup.bash" >> /home/itmo/.bashrc && \
    echo "alias dros='source devel/setup.bash'" >> /home/itmo/.bashrc

# change user
USER itmo
WORKDIR /home/itmo/labs
