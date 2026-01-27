# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, lib, pkg, ... }:

{
  imports =
    [
      ./users.nix
      ./network.nix
      ./services.nix
      ./programs.nix
      ./environment.nix
      /etc/nixos/hardware-configuration.nix
    ];

  nix.nixPath = [ 
    # "/home/emar/.nix-defexpr/channels"
    "nixpkgs=/nix/var/nix/profiles/per-user/root/channels/nixos"
    "nixos-config=/home/emar/.nixos/configuration.nix" 
    "/nix/var/nix/profiles/per-user/root/channels"
  ];

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  time.timeZone = "America/Chicago";

  i18n.defaultLocale = "en_US.UTF-8";
  i18n.extraLocaleSettings = {
    LC_ADDRESS = "en_US.UTF-8";
    LC_IDENTIFICATION = "en_US.UTF-8";
    LC_MEASUREMENT = "en_US.UTF-8";
    LC_MONETARY = "en_US.UTF-8";
    LC_NAME = "en_US.UTF-8";
    LC_NUMERIC = "en_US.UTF-8";
    LC_PAPER = "en_US.UTF-8";
    LC_TELEPHONE = "en_US.UTF-8";
    LC_TIME = "en_US.UTF-8";
  };

  # Allow unfree packages
  nixpkgs.config = {
    allowUnfree = true;
  };
  
  fonts.packages = with pkgs; [
    nerd-fonts.fira-code
  ];
 
  security.rtkit.enable = true;

  system.stateVersion = "25.11";
}
