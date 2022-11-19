[ -f ~/.xprofile ] && source ~/.xprofile
[ -f ~/.Xresources ] && xrdb -merge -I$HOME ~/.Xresources

exec awesome
