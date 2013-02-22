#!/bin/bash

# Media stuff
yum $1 install gstreamer-plugins-good gstreamer-plugins-ugly gstreamer-plugins-base gstreamer-plugins-bad-free

# MP4 video playback
yum $1 install gstreamer-ffmpeg

# Video editing stuff
yum $1 install avidemux ffmpeg

# image viewer
yum $1 install mirage
yum $1 remove ristretto

# the gimp
yum $1 install gimp gimp-lqr-plugin

# youtube downloader
wget https://raw.github.com/rg3/youtube-dl/master/youtube-dl
chmod +x youtube-dl

echo download and install https://github.com/chamfay/Curlew/archive/master.zip please

