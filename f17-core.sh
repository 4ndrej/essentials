#!/bin/bash

# ssh key
ssh-keygen

# rpmfusion repo
# http://blog.jpd.sk/2012/08/fedora-17-essentials.html
yum $1 localinstall --nogpgcheck http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-stable.noarch.rpm http://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-stable.noarch.rpm

# sublime-text repo
# http://blog.jpd.sk/2012/08/fedora-17-essentials.html
wget -O /etc/yum.repos.d/sublime2.repo http://repo.cloudhike.com/sublime2/fedora/sublime2.repo

# install stuff
yum $1 install mc screen git subversion ruby sublime-text

# tools
yum $1 install unrar
wget http://pkgs.repoforge.org/rar/rar-3.8.0-1.el6.rf.x86_64.rpm
yum $1 localinstall rar-3.8.0-1.el6.rf.x86_64.rpm

# keyboard slowdown
# http://blog.jpd.sk/2012/08/spomalena-klavesnica-problem-s-xfce-a11y.html
echo -e "[org/gnome/desktop/a11y/keyboard]\nenable=false\n" > /etc/dconf/db/gdm.d/01-no-a11y-keyboard
dconf update

# cleanup
yum $1 remove claws-mail*

# selinux disable
sed -i s/SELINUX=enforcing/SELINUX=disabled/g /etc/selinux/config
setenforce 0

#firewall config
yum $1 install system-config-firewall

# grub2 - set default
# cd /boot/grub2
# grep ^menuentry grub.cfg
# grub2-set-default 'Microsoft Windows XP Professional (on /dev/sda1)'
# grub2-mkconfig -o grub.cfg
# grub2-editenv list

