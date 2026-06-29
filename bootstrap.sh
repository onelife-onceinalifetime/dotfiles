#!/usr/bin/env bash
cd "$(dirname "${BASH_SOURCE}")" || exit

doIt() {
	rsync --exclude ".git/" \
		--exclude "bootstrap.sh" \
		--exclude "README.md" \
		--exclude "windows-terminal/" \
		-avh --no-perms . ~
	source ~/.bashrc
}

if [ "$1" == "--force" ] || [ "$1" == "-f" ]; then
	doIt
else
	read -p "홈의 기존 파일을 덮어쓸 수 있습니다. 진행할까요? (y/n) " -n 1
	echo ""
	[[ $REPLY =~ ^[Yy]$ ]] && doIt
fi
unset -f doIt
