#!/bin/sh

# xinitrc runs automatically when you run startx.

# There are some small but important commands that need to be run when we start
# the graphical environment. I keep those commands in ~/.xprofile because that
# file is run automatically if someone uses a display manager (login screen)
# and so they are needed there. To prevent doubling up commands, I source them
# here with the line below.

# uncomment these for dual screen setup
# xrandr --auto --output DVI-D-0 --mode 1920x1080 --rate 144.00 --right-of HDMI-1
feh --bg-scale ~/.config/wallpapers/alena-aenami-grave31.jpg

[ -f ~/.xprofile ] && . ~/.xprofile

exec i3

