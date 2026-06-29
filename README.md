# dotfiles

My bash, alias, and git setup. Clone it on a new machine and a few commands
bring my environment back.

## Install

```bash
git clone https://github.com/onelife-onceinalifetime/dotfiles.git ~/dotfiles
cd ~/dotfiles
bash packages.sh     # install programs (gh, neovim, ripgrep ...)
./bootstrap.sh       # copy configs into home
```

## Update

```bash
cd ~/dotfiles && git pull && ./bootstrap.sh
```

## Notes

`bootstrap.sh` copies the dotfiles into `$HOME` with rsync (not symlinks), so
edit files here and re-run it — editing them in `$HOME` gets overwritten.

`.ssh` and `.git-credentials` are intentionally excluded.

