#! /usr/bin/env bash

sudo cp ~/.local/share/chezmoi/script-files/configuration.nix /etc/nixos/configuration.nix

sudo nixos-rebuild switch
