#! /usr/bin/env bash

rm -rf ~/.bash_history ~/.bash_logout ~/.bash_profile ~/.bashrc ~/.oh-my-zsh

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
