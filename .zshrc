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
    golang
    
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

if [[ -z $SSH_CONNECTION ]]; then
    export EDITOR="emacs"
else
    export EDITOR="vim"
fi

[ -z "$TMUX"  ] && { tmux attach || exec tmux new-session;}

export MANPAGER="/bin/sh -c \"col -b | vim -c 'set ft=man ts=8 nomod nolist nonu noma' -\""

[ -f "$HOME/.ghcup/env" ] && source "$HOME/.ghcup/env" # ghcup-env
export PATH=$(go env GOPATH)/bin:$PATH
export PATH=$HOME/.deno/bin:$PATH
export PATH=$HOME/.local/bin:$PATH

if [ ! -S ~/.ssh/.ssh_auth_sock ]; then
    echo -n "(ssh-agent): "
    eval `ssh-agent`
    ln -sf "$SSH_AUTH_SOCK" ~/.ssh/.ssh_auth_sock
fi
export SSH_AUTH_SOCK=~/.ssh/.ssh_auth_sock

# opam configuration
[[ ! -r $HOME/.opam/opam-init/init.zsh ]] || source $HOME/.opam/opam-init/init.zsh  > /dev/null 2> /dev/null
export PATH=$PATH:/home/mangl-auf/.opam/default/bin
