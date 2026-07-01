#!/usr/bin/env bash
cd "$(dirname "${BASH_SOURCE}")" || exit
DOTFILES_DIR="$(pwd)"

DOTFILES=(.bashrc .profile .aliases .gitconfig .bash_logout)

doIt() {
	for f in "${DOTFILES[@]}"; do
		ln -sf "$DOTFILES_DIR/$f" ~/"$f"
	done
	mkdir -p ~/.config
	ln -sf "$DOTFILES_DIR/.config/starship.toml" ~/.config/starship.toml	
	source ~/.bashrc
}

if [ "$1" == "--force" ] || [ "$1" == "-f" ]; then
	doIt
else
	read -p "This will replace your home dotfiles with symlinks into this repo. Continue(y/n)" -n 1
	echo ""
	[[ $REPLY =~ ^[Yy]$ ]] && doIt
fi
unset -f doIt
