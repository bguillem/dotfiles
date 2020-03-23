# Profile file. Runs on login. Environmental variables are set here.

# Adds `~/.local/bin` to $PATH
export PATH="$PATH:/home/$USER/.scripts"

# Default programs:
export EDITOR="vim"
export TERMINAL="alacritty"
export BROWSER="firefox"
export STATUSBAR="i3status"

# Start graphical server on tty1 if not already running.
[ "$(tty)" = "/dev/tty1" ] && ! pgrep -x Xorg >/dev/null && exec startx
