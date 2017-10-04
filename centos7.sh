#!/bin/bash
#

# epel
yum install epel-release

# tools
yum install screen mc wget curl vim bzip2 p7zip tree
yum install yum-plugin-changelog yum-plugin-remove-with-leaves yum-utils

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

# java
yum install java-1.8.0-openjdk-devel

