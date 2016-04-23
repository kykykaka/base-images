#!/usr/bin/env bash
#
# @filename: image-build.sh
#

set -e

docker build -t maint/debian-systemd .

echo -e "\n"
docker images
