#!/bin/bash

# links text mode browser
yum $1 install links

# Torrent stuff
yum $1 install transmission

# Google Chrome
# yum $1 install https://dl.google.com/linux/direct/google-chrome-stable_current_x86_64.rpm
# Chrome Beta channel
yum $1 install https://dl.google.com/linux/direct/google-chrome-beta_current_x86_64.rpm

