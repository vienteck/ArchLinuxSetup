#!/bin/bash

echo "Begin Installing yay package manager"
cur_dir=$(pwd)
echo "Moving to home directory"
echo "Cloning yay.git"
cd ~/
git clone https://aur.archlinux.org/yay.git
echo "Moving into yay folder"
cd ~/yay
echo "Making yay package..."
makepkg -si
echo "Moving back to home directory"
cd $cur_dir

echo "Installing kitty terminal"
yay -S kitty --noconfirm

echo "Installing command line text processing tools"
yay -S sed awk grep tmux exa ncdu neofetch unimatrix github-cli --noconfirm

yay -S powertop fwupd fprintd libfprint imagemagick --noconfirm

yay -S remmina postman-bin libreoffice-still obsidian --noconfirm

yay -S go rustup pyenv nvm nmap rustscan htop openssh openvpn--noconfirm

mkdir -p ~/.config/fontconfig
#copy to share for systemwide sharing
sudo cp ~/ArchLinuxSetup/fonts/*.ttf /usr/share/fonts/
sudo fc-cache -f -v

sudo cp ~/ArchLinuxSetup/fonts/local.conf ~/.config/fontconfig/fonts.conf

sudo fc-cache -f -v

mkdir ~/Downloads
cd ~/Downloads

git clone --depth=1 https://gitlab.com/stephan-raabe/dotfiles.git

cd dotfiles

./install.sh

sudo cp ~/ArchLinuxSetup/files/powertop.service /etc/systemd/system/
