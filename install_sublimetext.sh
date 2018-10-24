#!/bin/bash

#update
sudo pacman -Syu

if [[ "$(which git 2>/dev/null)" ]]; then
	echo "git: OK"
else
	sudo pacman -S git
fi


if [[ "$(which gcc 2>/dev/null)" ]]; then
	echo "gcc: OK"
else
	sudo pacman -S base-devel
fi

cd ~/Downloads

git clone https://aur.archlinux.org/sublime-text-dev.git
cd sublime-text-dev/
makepkg -s
sudo pacman -U sublime-text-dev-3.3176-1-x86_64.pkg.tar.xz 
cd ../ && rm -frv sublime-text-dev/

echo Fin