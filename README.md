# zsh-last-path
inserts the last used path in zsh

# Dependencies
The script requires the [xdotool](https://www.semicomplete.com/projects/xdotool/) package to be installed.

# Prerequisites
## for bash
You need to put `PROMPT_COMMAND="history -a"` in your `bashrc`.  
Change "USER" in the path to the history to your username

## for zsh
You need to put `setopt INC_APPEND_HISTORY` in your `.zshrc`.  
Also make sure that the `$histfile` variable in the script matches the path to your `$HISTFILE` in `.zshrc`  

Obviously you need to add a shortcut in your window manager / desktop environment configuration that runs the script

# Things that may be improved in the future
* The script only finds the line in the history where the last path was used and assumes that the path is the second word in the line by now (see the `awk` command). If the path is not the second word, the script will not work. If you have any idea on how to fix this issue, feel free to contact me.
* The script may be ported to other shells
