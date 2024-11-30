cat << "EOF"
                                          _ _       __    _ _    
   ___     ___    _ __    __ _      _ _  | | |     /  \  | | |   
  / -_)   |___|  | '  \  / _` |    | '_| |_  _|   | () | |_  _|  
  \___|   _____  |_|_|_| \__,_|   _|_|_   _|_|_   _\__/   _|_|_  
_|"""""|_|     |_|"""""|_|"""""|_|"""""|_|"""""|_|"""""|_|"""""| 
"`-0-0-'"`-0-0-'"`-0-0-'"`-0-0-'"`-0-0-'"`-0-0-'"`-0-0-'"`-0-0-' 
EOF

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# zstyle ':omz:update' mode disabled  # disable automatic updates
zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

plugins=(
	git
	zsh-autosuggestions 
	zsh-syntax-highlighting 
)

source $ZSH/oh-my-zsh.sh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
source ~/powerlevel10k/powerlevel10k.zsh-theme
source ~/powerlevel10k/powerlevel10k.zsh-theme

# >>> personal >>>
alias build="/bin/zsh build.sh"
alias run="/bin/zsh run.sh"
alias zshconfig="nvim ~/.zshrc"

eval "$(zoxide init zsh)"

export PATH=$PATH:"$HOME/.local/bin"
bindkey -s ^f "tmux_sessionizer\n"
bindkey -s ^x "tmux kill-server\n"
# <<< personal <<<

# >>> programming languages >>>
export PATH=$PATH:"$HOME/go/bin"
export PATH=$PATH:$(go env GOPATH)/bin/
export PATH="$PATH:~/Library/Application Support/Coursier/bin"
[ -f "/Users/emar/.ghcup/env" ] && . "/Users/emar/.ghcup/env" # ghcup-env
[[ ! -r '/Users/emar/.opam/opam-init/init.zsh' ]] || source '/Users/emar/.opam/opam-init/init.zsh' > /dev/null 2> /dev/null
if [ -d "/opt/homebrew/opt/ruby/bin" ]; then
  export PATH=/opt/homebrew/opt/ruby/bin:$PATH
  export PATH=`gem environment gemdir`/bin:$PATH
fi

# Created by `pipx` on 2024-09-06 23:34:30
export PATH="$PATH:/Users/emar/.local/bin"
export PATH="$PATH:/Users/emar/.local/pipx"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
# <<< programming languages <<<
