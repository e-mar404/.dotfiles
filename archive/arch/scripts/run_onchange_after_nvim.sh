#! /usr/bin/env bash

# Currently on 0.12-dev 2822c38
git clone https://github.com/neovim/neovim

pushd neovim

make CMAKE_BUILD_TYPE=RelWithDebInfo

sudo make install

popd

sudo rm -rf ./neovim
