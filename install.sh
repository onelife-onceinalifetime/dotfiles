#!/usr/bin/env bash
DOTFILES="$HOME/dotfiles"
for f in .bashrc .bash_logout .profile .gitconfig; do
	ln -sf "$DOTFILES/$f" "$HOME/$f"
done
echo "dotfiles 링크 완료"
