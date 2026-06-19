#! /usr/bin/env bash

tpmDir="/home/emar/.tmux/plugins/tpm"

if [[ !(-d "$tpmDir") ]] ; then
    git clone https://github.com/tmux-plugins/tpm $tpmDir
fi
