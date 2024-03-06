#!/bin/bash

echo "Installing command line text processing tools"
sudo yay -S sed awk grep

echo "Installing tmux - a terminal multiplexer"
sudo yay -S tmux

echo "Installing exa - a modern replacement for ls"
sudo yay -S exa

echo "Installing ncdu - tool to search for files to delete"
sudo yay -S ncdu