#!/bin/sh

basepath=$(
	cd $(dirname $0)
	pwd
)

if [ ! -d ~/.zsh/rc ]; then
	mkdir -p ~/.zsh/rc
fi

ln -sf $basepath/.zshenv ~/.zshenv

for rc in .zsh/rc/.z*; do ln -sfv $basepath/$rc ~/.zsh/rc; done
for file in .zsh/.z*; do ln -sfv $basepath/$file ~/.zsh; done
