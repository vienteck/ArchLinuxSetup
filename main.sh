#!/bin/bash

printf "Hello there\n"
printf "This script will install several tools that I have curated for a fresh arch installation\n" 
printf "It contains networking, text, terminal, etc. tools\n"
printf "Most importantly it will install hyprland from source and apply end-4s dot files for hyprland\n"

printf "Please confirm that you are ready to install everything that is in the installation script\n"
printf "\e[97m"
printf "Enter capital \"YES\" (without quotes) to continue:"
read -p "" p

case $p in 
    "YES")
    printf "Your system will reboot once installation is complete\n"
    sleep 0;;
    *)
    echo "Received \"$p\", aborting...";exit 1;;
esac

# Update the package database
echo "Updating package databases"
sudo pacman -Syu --noconfirm

echo "Getting requirements to install yay"
sudo pacman -S --needed base-devel git

#make all sh files executable
chmod +x ./install/*sh

source ./install/yay.sh
sleep 5
clear
source ./install/fonts.sh
sleep 5
clear
source ./install/network_utilities.sh
sleep 5
clear
source ./install/swe.sh
sleep 5
clear
source ./install/applications.sh
sleep 5
clear
source ./install/terminal.sh
sleep 5
clear
source ./install/hyprland.sh
sleep 5
clear

# source ../hyprland/hyprland.sh

echo "rebooting in 5 seconds"
sleep 5

sudo reboot now;
