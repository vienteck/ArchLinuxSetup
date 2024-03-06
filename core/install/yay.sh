#!/bin/bash
echo "Begin Installing yay package manager"

echo "Moving to home directory"
cd ~/
echo "Cloning yay.git"
git clone https://aur.archlinux.org/yay.git
echo "Moving into yay folder"
cd yay
echo "Making yay package..."
makepkg -si
echo "Moving back to home directory"
cd ~/