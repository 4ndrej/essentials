#!/bin/bash
# push $1 to local applications
if [ $# -ne 1 ]
then
  echo $0 tool copies file to ~/.local/share/applications
  echo Usage:
  echo $0 filetoinstall.desktop
  exit 1
fi

cp -f $1 ~/.local/share/applications/

