# keyboard stuff
setxkbmap eu
xset r rate 300 70

# settings to set display screen saver off
xset s off
xset s off -dpms
xset -dpms

# setting the right output side and rotate
xrandr --output HDMI-0 --rotate left --right-of DVI-D-0 &

#picom &
#xmonad

# picom is run in the bspwmrc
bspwm
