fish_vi_key_bindings

# changing the background
function chback 
  set Wall (find /home/lutan/Data/Pictures/wallpaper/favorites/ -type f | sort -R | tail -1);
  feh --no-fehbg --bg-scale $Wall
end

#################
# Some aliases  #
#################
#########################
# Programming aliases   #
#########################
# python programming
alias pypro="cd ~/Data/programming/python/"
alias pykeys="cd ~/Data/programming/python/keystroke-statistics/"
alias pynextbac="cd ~/Data/programming/python/nextbac/"
alias pytester="cd ~/Data/programming/python/tester/"
# game engine programming
alias cfakehome="cd ~/Data/programming/fakegin/"
alias cfakegin="cd ~/Data/programming/fakegin/fakegin/"
alias cfakebox="cd ~/Data/programming/fakegin/sandbox/"
alias cfakebin="cd ~/Data/programming/fakegin/bin/Debug-linux-x86_64/"

########################
#   config aliases     #
########################
# changing fish conf
alias fishconf="nvim ~/.config/fish/config.fish"

# changing nvim stuff
alias nvconf="cd ~/.config/nvim/"

# dwm config
alias dwmconf="cd ~/software/dwm/"

# alias to open nvim faster
alias nv="nvim"

# Sabaki opening fast
alias Sabaki="cd ~/software/Sabaki/dist/ && ./sabaki-v0.51.1-linux-x64.AppImage"

# Gopanda
alias GoPanda="cd ~/software && ./GoPanda2.AppImage"

# Pixelorama
alias Pixelorama="cd ~/software/Pixelorama/Pixelorama/ && ./Pixelorama.x86_64"

######################
#   moving aliases   #
######################
# going faster to Downloads folder
alias down="cd ~/Downloads/"

# going to wallpaper folder
alias wallpaper="cd ~/Data/Pictures/wallpaper/"

# show neofetch everytime when fish shell opened
neofetch
