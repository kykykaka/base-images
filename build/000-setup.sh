#!/usr/bin/env bash
#
# Docker Maintainers <docker-maint@echip.io>
#
# @filename: 000-setup.sh
#

set -e


##
## DOCKERIZE SYSTEMD.
##

$HOME/.build~/dockerize-systemd.sh


##
## CLEANUP.
##

$HOME/.build~/sys-cleanup.sh

