#!/bin/bash
echo "Begin Installing yay package manager"
cur_dir=$(pwd)
echo "Moving to home directory"
echo "Cloning yay.git"
git clone https://aur.archlinux.org/yay.git ~/
echo "Moving into yay folder"
cd ~/yay
echo "Making yay package..."
makepkg -si
echo "Moving back to home directory"
cd $cur_dir