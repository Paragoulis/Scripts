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

#Google Chrome install
git clone https://aur.archlinux.org/google-chrome.git
cd google-chrome/
makepkg -s
sudo pacman -U google-chrome-*.pkg.tar.xz
cd ../ && rm -rfv google-chrome/

echo Fin