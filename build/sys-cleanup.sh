#!/usr/bin/env bash
#
# Docker Maintainers <docker-maint@echip.io>
#
# @filename: sys-cleanup.sh
#

set -e

##
## DO SOMETHING
##

[ -d $HOME/bin ] || mkdir $HOME/bin && chmod u=rwx,go= $HOME/bin

cat > $HOME/bin/sys-cleanup.sh <<'EOF'
#!/usr/bin/env bash
#
# Docker Maintainers <docker-maint@echip.io>
#
# @filename: sys-cleanup.sh
#
set -e
apt-get clean
rm -rf \
        $HOME/.bash_history \
        /var/log/{apt/*,alternatives.log,bootstrap.log,dpkg.log,lib/apt/lists/*} \
        /var/tmp/* \
        /tmp/*
EOF

chmod u=rwx,go= $HOME/bin/sys-cleanup.sh


##
## PERFORM CLEANUP
##

$HOME/bin/sys-cleanup.sh

