#!/bin/sh

basepath=$(
	cd $(dirname $0)
	pwd
)

if [ ! -d ~/.zsh/rc ]; then
	mkdir -p ~/.zsh/rc
fi

ln -sf $basepath/.zshenv ~/.zshenv

for rcfile in .zsh/rc/*; do ln -sfv $basepath/$rcfile ~/.zsh/rc; done
for zfile in .zsh/.z*; do ln -sfv $basepath/$zfile ~/.zsh; done
