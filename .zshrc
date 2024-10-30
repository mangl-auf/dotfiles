alias ec="emacsclient -c"

zstyle ':omz:update' mode reminder
CASE_SENSITIVE="false"
HIST_STAMPS="dd.mm.yyyy"

[ -z "$TMUX"  ] && { tmux attach || exec tmux new-session; }

if [ ! -S ~/.ssh/.ssh_auth_sock ]; then
    echo -n "(ssh-agent): "
    eval `ssh-agent`
    ln -sf "$SSH_AUTH_SOCK" ~/.ssh/.ssh_auth_sock
fi
export SSH_AUTH_SOCK=~/.ssh/.ssh_auth_sock
