FROM debian:jessie

MAINTAINER Debian Docker Maintainers <docker-maint@echip.io>

LABEL description="Debian dockerfile for everyone." vendor="HVA Team" version="1.0"

ENV \
	HOME=/root \

	# Let the container know that there is no tty
	DEBIAN_FRONTEND=noninteractive \

	container=docker

WORKDIR /root

COPY build/* ./.build~/

RUN \
	chmod u=rwx,go= $HOME/.build~/*.sh \
	&& $HOME/.build~/000-setup.sh \
	&& rm -rf $HOME/.build~

ONBUILD RUN apt-get update
