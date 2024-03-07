#!/bin/bash

mkdir ~/Downloads
cd ~/Downloads

git clone --depth=1 https://gitlab.com/stephan-raabe/dotfiles.git

cd dotfiles

./install.sh