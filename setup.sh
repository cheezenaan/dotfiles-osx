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
FISH_HOME=~/.config/fish
if [ ! -e "FISH_HOME" ]; then
	mkdir -p $FISH_HOME

	for file in {alias.fish,config.fish,env.fish,fishfile}; do
		ln -sni $basepath/.config/fish/$file ~/.config/fish/$file
	done
fi
