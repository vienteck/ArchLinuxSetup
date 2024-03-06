#!/bin/bash

mkdir -p ~/.fonts
#copy to share for systemwide sharing
sudo cp ../fonts/*.ttf /usr/share/fonts/
sudo fc-cache -f -v
echo fc-list

sudo cp ../fonts/fonts.conf ~/.config/fontconfig/

sudo fc-cache -f -v
