fish_vi_key_bindings

#################
# Some aliases  #
#################


#########################
# Programming aliases   #
#########################
# python programming
alias how2py="how2 -l python"
alias pynext="cd $HOME/prog/python/nextbac/"
alias pytester="cd $HOME/prog/python/tester/"

# c programming
alias how2c="how2 -l c"
alias hourpr="nv $HOME/prog/c/hourly/"

# haskell programming
alias how2hs="how2 -l haskell"

# assembly
alias how2a="how2 -l assembly"

########################
#   config aliases     #
########################
# changing nvim stuff
alias nvconf="cd ~/.config/nvim/"

# alias to open nvim faster
#alias nv="nvim"
alias nv="~/Applications/nvim.appimage"

# fish config
alias fishconf="nv $HOME/.config/fish/config.fish"

# bspwm config
alias bspwmrc="nv $HOME/.config/bspwm/bspwmrc"

# sxhkd config
alias sxhkdrc="nv $HOME/.config/sxhkd/sxhkdrc"

# alacritty config
alias alacrittyconf="nv $HOME/.config/alacritty/alacritty.yml"

# polybar config
alias polyconf="nv $HOME/.config/polybar/config"

# Xmonad conf
alias xmonadhs="nv $HOME/.xmonad/xmonad.hs"

######################
#   moving aliases   #
######################
# going faster to Downloads folder
alias down="cd ~/Downloads/"

######################
#  Environment stuff #
######################

set PATH $PATH ~/.local/bin
set PATH $PATH ~/.ghcup/env
# ghcup-env
set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME
test -f /home/jutep/.ghcup/env ; and set -gx PATH $HOME/.cabal/bin /home/jutep/.ghcup/bin $PATH

# no greeting message
set -U fish_greeting

# setting starship as prompt for fish
starship init fish | source
