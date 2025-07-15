{ config, pkgs, ... }:

{
  services.syncthing = {
    enable = true;
    openDefaultPorts = true;
    user = "emar";
    dataDir = "/home/emar";
    configDir = "/home/emar/.config/syncthing";
    folders = {
      "work-obsidian" = {
        path = "/home/emar/notes/work";
        ignorePerms = true;
      };
    };
  };
}
