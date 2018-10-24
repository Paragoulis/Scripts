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

#package-query install
git clone https://aur.archlinux.org/package-query.git
cd package-query
makepkg -s
sudo pacman -U package-query-*.pkg.tar.xz
package-query --version
cd ..
rm -rf package-query

#yaourt install
git clone https://aur.archlinux.org/yaourt.git
cd yaourt/
makepkg -s
sudo pacman -U yaourt-*.pkg.tar.xz
yaourt --version
cd ..
rm -rf yaourt

#Spotify install
yaourt -S spotify

echo Fin