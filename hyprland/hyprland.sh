#!/bin/bash

echo "Installing hyprland dependencies"
yay -S gdb ninja gcc cmake meson libxcb xcb-proto xcb-util xcb-util-keysyms libxfixes libx11 libxcomposite xorg-xinput libxrender pixman wayland-protocols cairo pango seatd libxkbcommon xcb-util-wm xorg-xwayland libinput libliftoff libdisplay-info cpio tomlplusplus hyprlang

yay -S wlroots

echo "Downloading hyprland source code"
cd ~/
git clone --recursive https://github.com/hyprwm/Hyprland
cd Hyprland
echo "Building hyprland"
sudo make all && sudo make install

sudo cp ./Hyprland /usr/bin/
sudo cp hyprctl -r /usr/bin/
sudo cp hyprpm -r /usr/bin/
sudo cp libwlroots.so.* /usr/lib/
sudo cp example/hyprland.desktop /usr/share/wayland-sessions/

printf "Hyprland is installed. Do you want to install end-4 configuration?\n"
printf "\e[97m"
printf "Enter capital \"YES\" (without quotes) to continue:"
read -p "" p

case $p in 
    "YES")
        cd ~/
        git clone https://github.com/end-4/dots-hyprland
        cd dots-hyprland
        bash install.sh 
        sleep 0;;
    *)
        echo "end-4 dot files will not be applied";;
esac
