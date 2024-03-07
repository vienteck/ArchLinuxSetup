#!/bin/bash
echo "Installing kitty terminal"
yay -S kitty --noconfirm

echo "Installing command line text processing tools"
yay -S sed awk grep --noconfirm

echo "Installing tmux - a terminal multiplexer"
yay -S tmux --noconfirm

echo "Installing exa - a modern replacement for ls"
yay -S exa --noconfirm

echo "Installing ncdu - tool to search for files to delete"
yay -S ncdu --noconfirm


ysy -S neofetch --noconfirm

yay -S unimatrix --noconfirm