#statusbar shit
while true; do
    xsetroot -name "$(date +%H:%M)"
	sleep 1m
done &
# setting the background to the last used
 WALL=$(find "${HOME}/Data/Pictures/wallpaper/favorites" -type f | sort -R |  tail -1)
 feh --no-fehbg --bg-scale "$WALL" &

# setting the right output side
xrandr --output HDMI-0 --auto --right-of DVI-D-0

# settings to set display screen saver off
xset s off
xset s off -dpms
xset -dpms

# keyboard stuff
setxkbmap eu
xset r rate 300 50

# starting picom
picom & 

dwm
#xmonad &
