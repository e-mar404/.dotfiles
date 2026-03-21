{ pkgs, ... }:

{
  programs = {
    gnupg.agent.enable = true;
    hyprland.enable = true;
    firefox.enable = true;
    fzf = { 
      fuzzyCompletion = true;
      keybindings = true;
    };
    tmux.enable = true;
    zsh = {
      enable = true;
      autosuggestions.enable = true;
      zsh-autoenv.enable = true;
      syntaxHighlighting.enable = true;
      promptInit = "source ${pkgs.zsh-powerlevel10k}/share/zsh-powerlevel10k/powerlevel10k.zsh-theme";
      ohMyZsh = {
        enable = true;
        plugins = [ "git" ];
      };
    };
  };
}
