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

export MANPAGER="/bin/sh -c \"col -b | vim -c 'set ft=man ts=8 nomod nolist nonu noma' -\""

[ -f "/home/mangl-auf/.ghcup/env" ] && source "/home/mangl-auf/.ghcup/env" # ghcup-env
export PATH=$(go env GOPATH)/bin:$PATH
export PATH=/home/mangl-auf/.deno/bin:$PATH

if [ ! -S ~/.ssh/.ssh_auth_sock ]; then
    eval `ssh-agent`
    ln -sf "$SSH_AUTH_SOCK" ~/.ssh/.ssh_auth_sock
fi
export SSH_AUTH_SOCK=~/.ssh/.ssh_auth_sock
