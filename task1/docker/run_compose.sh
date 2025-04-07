#!/bin/bash

# Allow root to connect to X server
xhost local:root

# Set XAUTH path (optional, if not already set)
export XAUTH=/tmp/.docker.xauth

# Start the container
docker compose up --build -d 