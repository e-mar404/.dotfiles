#! /usr/bin/env bash

pkgs_file='./packages.txt'
pkgs=''
while read package; do
  pkgs="$pkgs $package"
done < "$pkgs_file"

yay -S $pkgs --needed --noconfirm
