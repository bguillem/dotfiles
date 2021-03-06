# bguillem
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# enable autocd
shopt -s autocd

# cool vim stuff
xset r rate 300 25
setxkbmap -option caps:escape

# executing config files
[[ -f ~/.config/bash/aliasrc ]]       &&  source ~/.config/bash/aliasrc
[[ -f ~/.config/bash/functionrc ]]    &&  source ~/.config/bash/functionrc
[[ -f ~/.config/bash/promptrc ]]      &&  source ~/.config/bash/promptrc


# set PATH so it includes user's private bin directories
PATH="$HOME/.local/bin:$PATH:$HOME/.scripts"

# calls ~/.config/bash/functionrc.get_installer
INSTALLER=$(get_installer)

[ -e "/etc/DIR_COLORS" ] && DIR_COLORS="/etc/DIR_COLORS"
[ -e "$HOME/.dircolors" ] && DIR_COLORS="$HOME/.dircolors"
[ -e "$DIR_COLORS" ] || DIR_COLORS=""
eval "`dircolors -b $DIR_COLORS`"
