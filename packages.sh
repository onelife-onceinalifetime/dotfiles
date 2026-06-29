#!/usr/bin/env bash
set -e
sudo apt update
sudo apt install -y \
	git gh tmux rsync curl unzip \
	neovim \
	nodejs npm \
	python3-pip python3-venv \
	ripgrep zoxide tealdeer
echo "Package installation complete."
