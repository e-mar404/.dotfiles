#! /usr/bin/env bash

pkgs_file='./packages.txt'

while read package; do
  yay -S $package --needed --noconfirm
done < "$pkgs_file"
