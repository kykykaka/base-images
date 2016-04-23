#!/usr/bin/env bash
#
# @filename: image-remove.sh
#

set -e

docker rmi -f maint/debian

echo -e "\n"
docker images
