#!/usr/bin/env bash
set -e
sudo apt update
sudo apt install -y \
	git gh tmux rsync curl unzip \
	neovim nano \
	gcc gdb openssh \
	python3-pip python3-venv \
	ripgrep zoxide tealdeer eza
curl -sS https://starship.rs/install.sh | sh -s -- --yes
echo "Package installation complete."
