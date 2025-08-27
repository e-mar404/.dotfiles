{ pkgs, ... }:

{
  environment = {
    sessionVariables.NIXOS_OZONE_WL = "1"; # used for hyprland
    shellAliases = {
      vim = "nvim .";
      zshrc = "nvim ~/.local/shared/chezmoi/dot_zshrc";
    };
    systemPackages = with pkgs; [
      mako
      meson
      pango
      cairo
      gdk-pixbuf
      dbus
      scdoc
      neovim
      ripgrep
      ruby
      opam
      gnumake
      gcc
      elixir
      opam
      unzip
      nodejs_24
      wl-clipboard
      hyprlock
      hyprpaper
      waybar
      pavucontrol
      neofetch
      go
      gh
      git
      lazygit
      google-chrome
      postman
      ghostty
      zoxide
      chezmoi
      wofi
      oh-my-zsh
      zsh-powerlevel10k
      zsh-autosuggestions
      zsh-syntax-highlighting
      _1password-gui
      _1password-cli
      discord
      obsidian
      syncthing
      monocraft
      fd
      lua-language-server
      marksman
      ltex-ls
      hyprshot
      jq
      grim
      slurp
      libnotify
      hyprpicker
      lua
      gnucash
      stylua
      luajitPackages.luacheck
    ];
  };
}
