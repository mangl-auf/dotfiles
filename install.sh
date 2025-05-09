#!/usr/bin/env bash
#
# creating symlinks for shit to work

if [[ ! -d ~/dotfiles ]]; then
    echo "dotfiles direcotry must be at the top of home directory"
    echo "exiting ..."
    exit
fi

DOTFILES=(
    .gitconfig
    .latexmkrc
    .radare2rc
    .tmux.conf
    .vimrc
    .zshrc
)

for f in ${DOTFILES[@]}; do
    ln -sf ~/dotfiles/$f ~/$f
done

# XDG_CONFIG_FOLDERS=(
# )
# 
# for d in ${XDG_CONFIG_FOLDERS[@]}; do
#     ln -sf ~/dotfiles/$d ~/.config/$d
# done
