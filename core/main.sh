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

# Specify the directory containing the scripts
scripts_directory="install"

# Check if the directory exists
if [ -d "$scripts_directory" ]; then
    # Loop through each shell script file in the directory
    for script_file in ./"$scripts_directory"/*.sh; do
        # Check if the file is executable
        if [ -x "$script_file" ]; then
            echo "Executing: $script_file"
            . "$script_file"
        else
            echo "Warning: Skipping non-executable file - $script_file"
        fi
    done
else
    echo "Error: Directory '$scripts_directory' not found."
fi
# source ../hyprland/hyprland.sh

echo "rebooting in 5 seconds"
sleep 5

sudo reboot now;
