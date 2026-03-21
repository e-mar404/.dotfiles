#! /usr/bin/env bash

git clone https://github.com/neovim/neovim

pushd neovim

make CMAKE_BUILD_TYPE=RelWithDebInfo

sudo make install

popd

sudo rm -rf ./neovim
