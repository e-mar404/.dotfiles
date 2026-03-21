{ pkgs, ... }:

{
  users.defaultUserShell = pkgs.zsh;
  users.users.emar = {
    isNormalUser = true;
    description = "emar";
    extraGroups = [ "networkmanager" "wheel" "docker" ];
    useDefaultShell = true;
    packages = with pkgs; [
    ];
  };
}
