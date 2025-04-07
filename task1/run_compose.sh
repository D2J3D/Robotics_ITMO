#!/bin/bash

XAUTH=$(grep -E '^XAUTH=' .env | cut -d '=' -f2-)

xhost +local:docker 

sudo touch "${XAUTH}"
sudo chmod 777 "${XAUTH}"

# Start the container
docker compose build --no-cache
docker compose up  -d 