#!/usr/bin/env bash
#
# Docker Maintainers <docker-maint@echip.io>
#
# @filename: linux-etc-skel.sh
#

set -e

# Download files from "github.com/htien/linux-etc-skel".

DL_URL=https://github.com/htien/linux-etc-skel/raw/master

echo -e "bash_profile\n\
bashrc\n\
gitconfig" | while read f
do
	wget -qO "$HOME/.$f" "$DL_URL/$f"
done

([ -d $HOME/.ssh/ ] || mkdir $HOME/.ssh/) && wget -qO $HOME/.ssh/config $DL_URL/ssh/config


# Add the greeting message into .bashrc file.
cat >> $HOME/.bashrc <<'EOT'

# Greeting message.
echo -e "\n"
echo Welcome to Docker container!
EOT


# Set modes and remove something.

chmod -R u=rwX,go= $HOME/{.bash*,.gitconfig,.ssh/}
rm -f $HOME/.bash_history

