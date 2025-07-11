#! /usr/bin/env bash

$PackerDir="~/.local/share/nvim/site/pack/packer/start/packer.nvim"

if [ ! -d "$PackerDir" ] ; then
    git clone --depth 1 https://github.com/wbthomason/packer.nvim\
      $PackerDir
fi
