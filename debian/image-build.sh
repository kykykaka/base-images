#!/usr/bin/env bash
#
# @filename: image-build.sh
#

set -e

docker build -t maint/debian .

echo -e "\n"
docker images
