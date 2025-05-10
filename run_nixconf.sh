#! /usr/bin/env bash

sudo cp scrip-files/configuration.nix /etx/nixos/configuration.nix

sudo nixos-rebuild switch
