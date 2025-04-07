#!/bin/bash

xhost local:docker
touch ${XAUTH}
chmod 777 ${XAUTH}

# Start the container
docker compose up --build -d 