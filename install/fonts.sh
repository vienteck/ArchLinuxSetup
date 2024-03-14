#!/bin/bash

mkdir -p ~/.config/fontconfig
#copy to share for systemwide sharing
sudo cp ../fonts/*.ttf /usr/share/fonts/
sudo fc-cache -f -v

sudo cp ../fonts/local.conf ~/.config/fontconfig/fonts.conf

sudo fc-cache -f -v
