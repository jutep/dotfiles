fish_vi_key_bindings

# changing the background
function chback 
  set Wall (find /home/lutan/Data/Pictures/wallpaper/favorites/ -type f | sort -R | tail -1);
  feh --no-fehbg --bg-scale $Wall
end

###
# Some aliases to move faster between stuff
###
# going to wallpaper folder
alias wallpaper="cd /home/lutan/Data/Pictures/wallpaper/"

# changing fish conf
alias fishconf="nvim /home/lutan/.config/fish/config.fish"

# changing nvim stuff
alias nvconf="cd /home/lutan/.config/nvim/"

# python programming
alias pypro="cd /home/lutan/Data/programming/python/"

# dwm config
alias dwmconf="cd /home/lutan/software/dwm/"

# alias to open nvim faster
alias nv="nvim"

# going faster to Downloads folder
alias down="cd /home/lutan/Downloads/"

# show neofetch everytime when fish shell opened
neofetch
