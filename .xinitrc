[ -f ~/.xprofile ] && source ~/.xprofile

xinput set-prop '8' 'libinput Accel Speed' -1
exec awesome
