#!/bin/sh

basepath=$(
	cd $(dirname $0)
	pwd
)

# Install zsh shell
ln -sf $basepath/.zshenv ~/.zshenv
ln -sfv $basepath/.zsh/rc $HOME/.zsh
for zfile in .zsh/.z*; do ln -sfv $basepath/$zfile ~/.zsh; done

# Install fish shell
ln -sfv $basepath/.config/fish $HOME/.config
