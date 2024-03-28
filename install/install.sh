#!/bin/bash

echo "Installing yay package manager"
install_directory=$(pwd)
echo "Moving to home directory"
echo "Cloning yay.git"
cd ~/
git clone https://aur.archlinux.org/yay.git
echo "Moving into yay folder"
cd ~/yay
echo "Making yay package..."
makepkg -si
echo "Moving back to home directory"
cd $install_directory

echo "Installing kitty terminal"
yay -S alacritty --noconfirm

echo "Installing command line text processing tools"
yay -S sed awk grep tmux exa ncdu neofetch unimatrix github-cli --noconfirm

#Netoworking tools
yay -S tcpdump nmap rustscan htop openssh openvpn

yay -S powertop fwupd fprintd libfprint imagemagick --noconfirm

#Applications
yay -S remmina gimp postman-bin libreoffice-still obsidian --noconfirm

#Programming Languages
yay -S go rustup pyenv nvm --noconfirm

mkdir -p ~/.config/fontconfig
#copy to share for systemwide sharing
#Add any custom fonts in the fonts folder
sudo cp ~/ArchLinuxSetup/fonts/*.ttf /usr/share/fonts/
sudo fc-cache -f -v

sudo cp $install_directory/fonts/local.conf ~/.config/fontconfig/fonts.conf

sudo fc-cache -f -v

mkdir ~/Downloads
cd ~/Downloads

git clone --depth=1 https://gitlab.com/stephan-raabe/dotfiles.git

cd dotfiles

./install.sh

sudo cp $install_directory/files/powertop.service /etc/systemd/system/

sudo rm -r ~/dotfiles

#install custom dotfiles.comment next line if you want ml4w dotfiles
cp -r $install_directory/dotfiles ~/
