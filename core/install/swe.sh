#!/bin/bash

echo "Begin instalilng programming languages"

echo "Installing golang"
sudo yay -S go

echo "Installing Rust"
sudo yay -S rustup

echo "Installing up Python version manager"
sudo yay -S pyenv

echo "Installing node version manager"
sudo yay -S nvm