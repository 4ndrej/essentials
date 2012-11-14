#!/bin/bash

# chkfontpath
echo manually download actual chkfontpath from
links http://packages.atrpms.net/dist/f17/chkfontpath/
yum $1 localinstall chkfontpath*.rpm

# windows fonts
yum $1 install rpm-build cabextract ttmkfdir
wget http://corefonts.sourceforge.net/msttcorefonts-2.0-1.spec
rpmbuild -ba msttcorefonts-2.0-1.spec
yum $1 localinstall /root/rpmbuild/RPMS/noarch/msttcorefonts-2.0-1.noarch.rpm

