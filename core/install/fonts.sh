#!/bin/bash

mkdir -p ~/.fonts
#copy to share for systemwide sharing
sudo cp ../../fonts/*.ttf /usr/share/fonts/
sudo fc-cache -f -v

sudo cp ../../fonts/local.conf /etc/fonts/

sudo fc-cache -f -v
