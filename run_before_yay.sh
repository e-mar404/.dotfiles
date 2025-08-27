#! /usr/bin/env bash

rm -rf yay

sudo pacman -Syu
sudo pacman -S --needed base-devel git
git clone https://aur.archlinux.org/yay.git

pushd yay
makepkg -si
popd

rm -rf yay
