#!/bin/bash

# ssh key
ssh-keygen

# rpmfusion repo
# http://blog.jpd.sk/2012/08/fedora-17-essentials.html
yum localinstall --nogpgcheck http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-stable.noarch.rpm http://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-stable.noarch.rpm

# sublime-text repo
# http://blog.jpd.sk/2012/08/fedora-17-essentials.html
wget -O /etc/yum.repos.d/sublime2.repo http://repo.cloudhike.com/sublime3/fedora/sublime2.repo

# install stuff
yum install -y mc screen git subversion ruby sublime-text

# spomalena klavesnica
# http://blog.jpd.sk/2012/08/spomalena-klavesnica-problem-s-xfce-a11y.html
echo -e "[org/gnome/desktop/a11y/keyboard]\nenable=false\n" > /etc/dconf/db/gdm.d/01-no-a11y-keyboard
dconf update
