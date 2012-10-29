#!/bin/bash

# Media stuff
yum $1 install gstreamer-plugins-good gstreamer-plugins-ugly gstreamer-plugins-base gstreamer-plugins-bad-free

# MP4 video playback
yum $1 install gstreamer-ffmpeg

# Video editing stuff
yum $1 install avidemux

# image viewer
yum $1 install mirage
yum remove ristretto

# the gimp
yum $1 install gimp

