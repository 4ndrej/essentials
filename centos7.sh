#!/bin/bash
#

# epel
cd ~/install
wget https://dl.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-5.noarch.rpm
yum localinstall -y epel-release-7-5.noarch.rpm
cd ..

# tools
yum install screen mc wget curl vim

# network tools
# net-tools: ifconfig
# traceroute: traceroute
# bind-utils: dig
yum install net-tools traceroute bind-utils

# htop
# http://www.cyberciti.biz/faq/installing-rhel-epel-repo-on-centos-redhat-7-x/
yum install htop

# git
yum install git tig
