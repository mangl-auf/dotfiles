alias ec="emacsclient -c"

setopt PROMPT_SUBST
PROMPT=$'%F{99}%n%f %{\x1b[3m%}at%{\x1b[0m%} %F{63}%~/%f %# '

HISTSIZE=5000
SAVEHIST=5000
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt incappendhistory
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

autoload -Uz select-word-style && select-word-style bash

unsetopt beep

if [ ! -S ~/.ssh/.ssh_auth_sock ]; then
    echo -n "(ssh-agent): "
    eval `ssh-agent`
    ln -sf "$SSH_AUTH_SOCK" ~/.ssh/.ssh_auth_sock
fi
export SSH_AUTH_SOCK=~/.ssh/.ssh_auth_sock
