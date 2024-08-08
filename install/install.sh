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

echo "Installing Socials"
yay -S Discord --noconfirm

echo "Installing command line text processing tools"
yay -S sed awk grep ripgrep bat tmux eza ncdu neofetch unimatrix github-cli --noconfirm

#Ethical Hacking Tools
#yay -S nmap hydra aircrack-ng snort metasploit  --noconfirm

#Netoworking tools
yay -S tcpdump rustscan htop openssh openvpn tor

yay -S laptop-mode-tools fwupd fprintd libfprint imagemagick --noconfirm

#Applications
yay -S remmina gimp  --noconfirm

#Programming Languages
# yay -S go rustup pyenv nvm--noconfirm

#copy to share for systemwide sharing. Add any custom fonts in the fonts folder
mkdir -p ~/.config/fontconfig
sudo cp $install_directory/fonts/*.ttf /usr/share/fonts/
sudo fc-cache -f -v

sudo cp $install_directory/fonts/local.conf ~/.config/fontconfig/fonts.conf
sudo fc-cache -f -v

mkdir ~/dotfiles-version
cp $install_direcotry/files/hook.sh ~/dotfiles-verison

mkdir ~/Downloads
cd ~/Downloads

#Uncomment bottom 2 lines if you want to get a fresh copy of the build
bash <(curl -s https://raw.githubusercontent.com/mylinuxforwork/dotfiles/main/setup.sh)


sudo rm -r ~/dotfiles

#install custom dotfiles.
#uncomment next line if you want ml4w dotfiles
cp -r $install_directory/custom_dotfiles ~/

#sudo ln -s ~/dotfiles/scripts/powertop.service /etc/systemd/system/
#powertop has been replacedy by laptop-mode. It is much more reliable
systemctl enable laptop-mode.service

