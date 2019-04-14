#!/bin/bash

# bash configuration:
# in your .bashrc file add "PROMPT_COMMAND="history -a"

# zsh configuration: 
# in your .zshrc file add "setopt INC_APPEND_HISTORY"

# get current shell
if [ "$SHELL" = "/bin/bash" ]; then
		histfile=$"/home/USER/.bash_history"
else
		# make sure the path matches the $HISTFILE variable in your .zshrc
		histfile=$"/home/USER/.histfile"
fi

# wait for the user to lift their finger off the $mod key...
sleep 0.2

windowid=$(xdotool getwindowfocus)
lpath=$(cat $histfile | grep  "/" | tail -1 | awk {'print $2'})
setxkbmap de
xdotool windowactivate --sync $windowid type "$lpath"
