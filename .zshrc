export ZSH="$HOME/.oh-my-zsh"

export PATH=$(go env GOPATH)/bin:$PATH
export PATH=$HOME/.deno/bin:$PATH
export PATH=$HOME/.local/bin:$PATH
export PATH="$BUN_INSTALL/bin:$PATH"

export EDITOR="vim"

alias ec="emacsclient -c"

zstyle ':omz:update' mode reminder
CASE_SENSITIVE="false"
HIST_STAMPS="dd.mm.yyyy"
plugins=(
    git
    golang
    mercurial
    
    zsh-syntax-highlighting
)
source $ZSH/oh-my-zsh.sh

[ -z "$TMUX"  ] && { tmux attach || exec tmux new-session; }

if [ ! -S ~/.ssh/.ssh_auth_sock ]; then
    echo -n "(ssh-agent): "
    eval `ssh-agent`
    ln -sf "$SSH_AUTH_SOCK" ~/.ssh/.ssh_auth_sock
fi
export SSH_AUTH_SOCK=~/.ssh/.ssh_auth_sock

# bun completions
[ -s "/home/mangl-auf/.bun/_bun" ] && source "/home/mangl-auf/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"

eval "$(starship init zsh)"
