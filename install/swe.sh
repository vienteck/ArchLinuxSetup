#!/bin/bash

echo "Begin instalilng programming languages"

echo "Installing golang"
yay -S go --noconfirm

echo "Installing Rust"
yay -S rustup --noconfirm

echo "Installing up Python version manager"
yay -S pyenv --noconfirm

echo "Installing node version manager"
yay -S nvm --noconfirm