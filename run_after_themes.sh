#! /usr/bin/env bash

# install themes for:
#
# fuzzel

fuzzelThemeDir="/home/emar/themes/fuzzel"

if [[ !( -d $fuzzelThemeDir ) ]]; then
  mkdir -p $fuzzelThemeDir 
  git clone https://github.com/catppuccin/fuzzel "$fuzzelThemeDir/catppuccin"
fi
