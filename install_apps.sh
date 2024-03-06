#!/bin/bash

# Update the package database
echo "Updating package databases"
sudo pacman -Syu --noconfirm

echo "Getting requirements to install yay"
sudo pacman -S --needed base-devel git

echo "Moving to home directory"
cd ~/
echo "Cloning yay.git"
git clone https://aur.archlinux.org/yay.git
echo "Moving into yay folder"
cd yay
echo "Making package..."
makepkg -si
echo "Moving back to home directory"
cd ~/

# Tool to remote into windows remote desktop
echo "Installing Rdesktop"
sudo yay -S Rdesktop

# PostMan tool for api testing
echo "Installing Postman"
sudo yay -S postman-bin

#Neovim
echo "Installing Neovim"
sudo yay -S neovim
cd ~/.config
echo "Downloading custom configuration"
git clone https://github.com/vienteck/nvim
cd ~/

echo "Installing command line text processing tools"
sudo yay -S sed awk grep

echo "Installing tmux"
sudo yay -S tmux

echo "Installing exa"
sudo yay -S exa

echo "Installing nmap"
sudo yay -S nmap

echo "Installing htop"
sudo yay -S htop

echo "Instalilng ssh"
sudo yay -S ssh

echo "Installing ncdu - tool to search for files to delete"
sudo yay -S ncdu

echo "Installing gparted"
sudo yay -S gparted-git

