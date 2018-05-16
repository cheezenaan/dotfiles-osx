#!/bin/sh

basepath=$(
	cd $(dirname $0)
	pwd
)

if [ ! -d ~/.zsh ]; then
	mkdir ~/.zsh
fi

ln -sf $basepath/.zshenv ~/.zshenv
for file in .zsh/.z*; do
	ln -sfv $basepath/$file ~/.zsh/
done
