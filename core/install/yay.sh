#!/bin/bash
echo "Begin Installing yay package manager"

echo "Moving to home directory"
echo "Cloning yay.git"
git clone https://aur.archlinux.org/yay.git ~/
echo "Moving into yay folder"

echo "Making yay package..."
makepkg -sip ~/yay/PKGBUILD
echo "Moving back to home directory"
cd ~/