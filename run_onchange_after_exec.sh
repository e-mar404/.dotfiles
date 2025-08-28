#! /usr/bin/env bash

chmod +x ~/.local/bin/tmux_sessionizer
chmod +x ~/.local/bin/select_wallpaper
chmod +x ~/.local/bin/so

rm -rf ~/.bash_history ~/.bash_logout ~/.bash_profile ~/.bashrc ~/.oh-my-zsh

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
