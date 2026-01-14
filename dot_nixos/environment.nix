{ pkgs, ... }:

{
  environment = {
    sessionVariables.NIXOS_OZONE_WL = "1"; # used for hyprland
    shellAliases = {
      vim = "nvim .";
      zshrc = "nvim ~/.local/shared/chezmoi/dot_zshrc";
    };
    systemPackages = with pkgs; [
      neovim
      go
      ripgrep
      unzip
      wl-clipboard
      hyprlock
      hyprpaper
      easyeffects
      waybar
      neofetch
      git
      lazygit
      google-chrome
      ghostty
      zoxide
      chezmoi
      wofi
      oh-my-zsh
      zsh-powerlevel10k
      zsh-autosuggestions
      zsh-syntax-highlighting
      _1password-gui
      discord
      monocraft
      hyprshot
      libnotify
      hyprpicker
    ];
  };
}
