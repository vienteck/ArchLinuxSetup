#!/bin/bash

# Tool to remote into windows remote desktop
echo "Installing Rdesktop"
sudo yay -S Rdesktop

# PostMan tool for api testing
echo "Installing Postman"
sudo yay -S postman-bin

echo "Installing gparted"
sudo yay -S gparted-git


#Neovim
echo "Installing Neovim"
sudo yay -S neovim
cd ~/.config
echo "Downloading custom configuration"
git clone https://github.com/vienteck/nvim
cd ~/