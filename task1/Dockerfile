# Use the official ROS Noetic desktop image as base
FROM osrf/ros:noetic-desktop

# Set environment variables for Python and container settings
ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1 \
    NVIDIA_VISIBLE_DEVICES=all \
    NVIDIA_DRIVER_CAPABILITIES=all

# Set the working directory
WORKDIR /workdir

# Install system dependencies and Gazebo components
RUN apt-get update && \
    # Install basic utilities
    apt-get install -y --no-install-recommends \
        curl \
        wget \
        python3-pip \
        python3-tk \
        lsb-release \
        && \
    # Add Gazebo repository
    echo "deb http://packages.osrfoundation.org/gazebo/ubuntu-stable $(lsb_release -cs) main" > /etc/apt/sources.list.d/gazebo-stable.list && \
    wget https://packages.osrfoundation.org/gazebo.key -O - | apt-key add - && \
    # Update package lists with new repository
    apt-get update && \
    # Install all required packages
    apt-get install -y --no-install-recommends \
        libgazebo11-dev \
        ros-noetic-gazebo-ros \
        ros-noetic-gazebo-ros-pkgs \
        ros-noetic-gazebo-ros-control \
        ros-noetic-control-toolbox \
        ros-noetic-realtime-tools \
        ros-noetic-ros-controllers \
        ros-noetic-xacro \
        python3-wstool \
        ros-noetic-tf-conversions \
        ros-noetic-kdl-parser \
        liburdfdom-tools \
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

# Initialize rosdep (consider running manually if needed)
# RUN rosdep init && rosdep update