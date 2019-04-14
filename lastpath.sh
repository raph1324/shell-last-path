#!/bin/bash

# zsh configuration: 
# in your .zshrc file add "setopt INC_APPEND_HISTORY"

# make sure the path matches the $HISTFILE variable in your .zshrc
histfile=$"/home/raph1324/.histfile"

# wait for the user to lift their finger off the $mod key...
sleep 0.2

windowid=$(xdotool getwindowfocus)
lpath=$(cat $histfile | grep  "/" | tail -1 | awk {'print $2'})
setxkbmap de
xdotool windowactivate --sync $windowid type "$lpath"
