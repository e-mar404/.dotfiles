#! /usr/bin/env bash

$TpmDir="~/.tmux/plugins/tpm"

if [ ! -d "$TpmDir" ] ; then
    git clone https://github.com/tmux-plugins/tpm $TpmDir
fi
