[ -f ~/.xprofile ] && source ~/.xprofile
[ -f ~/.Xresources ] && xrdb -merge -I$HOME ~/.Xresources

while true; do
    xsetroot -name "$(date +"%d.%m.%Y %R")"
    sleep 1m
done &

exec dwm
