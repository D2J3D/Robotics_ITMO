FROM osrf/ros:noetic-desktop-full

# Set environment variables for Python and container settings
ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1 \
    NVIDIA_VISIBLE_DEVICES=all \
    NVIDIA_DRIVER_CAPABILITIES=all

# Set the working directory
WORKDIR /workdir

RUN apt-get update && \
    # Install basic utilities
    apt-get install -y --no-install-recommends \
        curl \
        wget \
        python3-pip \
        python3-tk \
        lsb-release \
        vim \
        git \
        tmux \
        tree \
        && \
    # Clean up package manager cache
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Set up ROS environment and aliases
RUN echo "source /opt/ros/noetic/setup.bash" >> /root/.bashrc && \
    echo "alias dros='source devel/setup.bash'" >> /root/.bashrc
