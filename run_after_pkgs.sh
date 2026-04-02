#! /usr/bin/env bash

validInput=false
while [[ $validInput != true ]] ; do
  read -n 1 -p 'Run pkgs.sh [y|n] ' run 
  if [[ $run == 'n' ]]; then
    exit 0
  elif [[ $run == y ]]; then
    validInput=true
  else 
    printf "\nthat is an invalid option\n"
  fi
done

pkgs_file='./packages.txt'
pkgs=''
while read package; do
  pkgs="$pkgs $package"
done < "$pkgs_file"

yay -S $pkgs --needed --noconfirm
