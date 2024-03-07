#!/bin/bash

# Tool to remote into windows remote desktop
echo "Installing Rdesktop"
yay -S rdesktop --noconfirm

# PostMan tool for api testing
echo "Installing Postman"
yay -S postman-bin --noconfirm

#echo "Installing gparted"
#yay -S gparted-git --noconfirm


#Neovim
c=$(pwd)
echo "Installing Neovim"
yay -S neovim --noconfirm
echo "Downloading custom configuration"
cd ~/.config
git clone https://github.com/vienteck/nvim
cd $c
