#!/bin/bash

#update
sudo pacman -Syu

#git install
sudo pacman -S git

#package-query install
cd Downloads/
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

#Oracle virtualbox install
sudo pacman -S virtualbox

#Deluge install
sudo pacman -S deluge

#Atom text editor install
sudo pacman -S atom

#QMMP install
sudo pacman -S qmmp

#vlc install
sudo pacman -S vlc

#OBS
sudo pacman -S obs-studio

#Lehet egyben is
#sudo pacman -S virtualbox deluge atom qmmp vlc obs-studio
