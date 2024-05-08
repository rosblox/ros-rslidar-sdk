#!/bin/bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

export HOST_UID=$(id -u)

docker compose -f $SCRIPT_DIR/docker-compose.yml run \
--volume $SCRIPT_DIR/rslidar_sdk:/colcon_ws/src/rslidar_sdk \
--volume $SCRIPT_DIR/rslidar_msg:/colcon_ws/src/rslidar_msg \
ros-rslidar-sdk bash
