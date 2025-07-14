{ pkgs, ... }:

{
  users.defaultUserShell = pkgs.zsh;
  users.users.emar = {
    isNormalUser = true;
    description = "emar";
    extraGroups = [ "networkmanager" "wheel" ];
    useDefaultShell = true;
    packages = with pkgs; [
    ];
  };
}
