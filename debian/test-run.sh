#!/usr/bin/env bash
#
# @filename: test-run.sh
#

set -e

docker run -itd maint/debian

CONTAINER_ID=$(docker ps -lq)

echo -e "\n"
docker ps -f=Id=$CONTAINER_ID

docker exec -it $CONTAINER_ID /bin/bash

