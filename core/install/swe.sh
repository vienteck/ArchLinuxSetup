#!/bin/bash

echo "Begin instalilng programming languages"

echo "Installing golang"
sudo yay -S go --noconfirm

echo "Installing Rust"
sudo yay -S rustup --noconfirm

echo "Installing up Python version manager"
sudo yay -S pyenv --noconfirm

echo "Installing node version manager"
sudo yay -S nvm --noconfirm