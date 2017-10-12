# sysadmin tools
dnf install mc screen vim htop
mkdir -p ~/bin/
wget -O ~/bin/colorize.pl https://raw.githubusercontent.com/4ndrej/colorize/master/colorize.pl
chmod +x ~/bin/colorize.pl

# development
dnf install git git-cola tig
git config --global color.ui auto
dnf install redshift
wget -O ~/bin/cmaven https://raw.githubusercontent.com/4ndrej/colorize/master/cmaven
chmod +x ~/bin/cmaven

# mp3 playback
dnf install http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm http://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
dnf install gstreamer-plugins-good gstreamer1-plugins-good gstreamer-plugins-bad gstreamer-plugins-ugly gstreamer1-plugins-ugly

# media manipulation and playback
dnf install ffmpeg mediainfo vlc

# https://github.com/chamfay/Curlew/archive/v0.1.22.zip

# office
dnf install libreoffice-calc libreoffice-writer libreoffice-impress libreoffice-langpack-sk

# office communicatir plugin
dnf install pidgin-sipe

# compression tools
dnf install p7zip p7zip-plugins unrar

