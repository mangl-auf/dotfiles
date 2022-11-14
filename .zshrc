# export PATH=$HOME/bin:/usr/local/bin:$PATH

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

CASE_SENSITIVE="true"

# HYPHEN_INSENSITIVE="true"

zstyle ':omz:update' mode reminder

# DISABLE_UNTRACKED_FILES_DIRTY="true"

HIST_STAMPS="dd.mm.yyyy"

plugins=(
    git
    screen
    
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

if [[ -z $SSH_CONNECTION ]]; then
    export EDITOR="emacs"
else
    export EDITOR="vim"
fi

if [[ -z "$STY" ]]; then
    screen -xRR default_zsh_session
fi

[ -f "/home/mangl-auf/.ghcup/env" ] && source "/home/mangl-auf/.ghcup/env" # ghcup-env
export PATH=$(go env GOPATH)/bin:$PATH
