#!/usr/bin/env bash
cd "$(dirname "${BASH_SOURCE}")" || exit

doIt() {
	rsync --exclude ".git/" \
		--exclude "bootstrap.sh" \
		--exclude "README.md" \
		--exclude "windows-terminal/" \
		--exclude "packages.sh" \
		-avh --no-perms . ~
	source ~/.bashrc
}

if [ "$1" == "--force" ] || [ "$1" == "-f" ]; then
	doIt
else
	read -p "This can overwrite your original files. Do you want to continue? (y/n) " -n 1
	echo ""
	[[ $REPLY =~ ^[Yy]$ ]] && doIt
fi
unset -f doIt
