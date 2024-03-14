#!/bin/bash

c=$(pwd)

# Tool to remote into windows remote desktop
echo "Installing Rdesktop"
yay -S rdesktop --noconfirm

# PostMan tool for api testing
echo "Installing Postman"
yay -S postman-bin --noconfirm

#echo "Installing gparted"
#yay -S gparted-git --noconfirm

#something is draining my battery, this will help me determine what it is
yay -S powertop --noconfirm
yay -S laptop-mode-tools --noconfirm
#audio wasnt working until i installed this
yay -S sof-firmware --noconfirm

#firmware manager
yay -S fwupd --noconfirm

#fingerprint reader setup
yay -S fprintd --noconfirm
yay -S libfprint --noconfirm
yay -S imagemagick --noconfirm


yay -S libva-utils

#Neovim
echo "Installing Neovim"
yay -S neovim --noconfirm
echo "Downloading custom configuration"
cd ~/.config
git clone https://github.com/vienteck/nvim
cd $c
