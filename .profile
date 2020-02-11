# Profile file. Runs on login. Environmental variables are set here.

# Adds `~/.local/bin` to $PATH
set -Ux PATH "$PATH:$(du "$HOME/.local/bin/" | cut -f2 | tr '\n' ':' | sed 's/:*$//'):/home/$USER/.scripts"

# Default programs:
set -Ux EDITOR "vim"
set -Ux TERMINAL "alacritty"
set -Ux BROWSER "firefox"
set -Ux READER "zathura"
set -Ux FILE "ranger"
set -Ux STATUSBAR "i3blocks"

# ~/ Clean-up:
#set -Ux XAUTHORITY "$XDG_RUNTIME_DIR/Xauthority" # This line will break some DMs.
set -Ux GTK2_RC_FILES "$HOME/.config/gtk-2.0/gtkrc-2.0"
set -Ux LESSHISTFILE "-"
set -Ux WGETRC "$HOME/.config/wget/wgetrc"
set -Ux PASSWORD_STORE_DIR "$HOME/.local/share/password-store"

# Other program settings:
set -Ux DICS "/usr/share/stardict/dic/"
set -Ux SUDO_ASKPASS "$HOME/.local/bin/dmenupass"
set -Ux FZF_DEFAULT_OPTS "--layout=reverse --height 40%"
set -Ux LESS -R
set -Ux LESS_TERMCAP_mb "$(printf '%b' '[1;31m')"
set -Ux LESS_TERMCAP_md "$(printf '%b' '[1;36m')"
set -Ux LESS_TERMCAP_me "$(printf '%b' '[0m')"
set -Ux LESS_TERMCAP_so "$(printf '%b' '[01;44;33m')"
set -Ux LESS_TERMCAP_se "$(printf '%b' '[0m')"
set -Ux LESS_TERMCAP_us "$(printf '%b' '[1;32m')"
set -Ux LESS_TERMCAP_ue "$(printf '%b' '[0m')"

mpd >/dev/null 2>&1 &

[ ! -f ~/.config/shortcutrc ] && shortcuts >/dev/null 2>&1

# Start graphical server on tty1 if not already running.
[ "$(tty)" = "/dev/tty1" ] && ! pgrep -x Xorg >/dev/null && exec startx

# Switch escape and caps if tty and no passwd required:
sudo -n loadkeys ~/.local/share/larbs/ttymaps.kmap 2>/dev/null

set -Ux LF_ICONS "di=:fi=:ln=:or=:ex=:*.c=:*.cc=:*.clj=:*.coffee=:*.cpp=:*.css=:*.d=:*.dart=:*.erl=:*.exs=:*.fs=:*.go=:*.h=:*.hh=:*.hpp=:*.hs=:*.html=:*.java=:*.jl=:*.js=:*.json=:*.lua=:*.md=:*.php=:*.pl=:*.pro=:*.py=:*.rb=:*.rs=:*.scala=:*.ts=:*.vim=:*.cmd=:*.ps1=:*.sh=:*.bash=:*.zsh=:*.fish=:*.tar=:*.tgz=:*.arc=:*.arj=:*.taz=:*.lha=:*.lz4=:*.lzh=:*.lzma=:*.tlz=:*.txz=:*.tzo=:*.t7z=:*.zip=:*.z=:*.dz=:*.gz=:*.lrz=:*.lz=:*.lzo=:*.xz=:*.zst=:*.tzst=:*.bz2=:*.bz=:*.tbz=:*.tbz2=:*.tz=:*.deb=:*.rpm=:*.jar=:*.war=:*.ear=:*.sar=:*.rar=:*.alz=:*.ace=:*.zoo=:*.cpio=:*.7z=:*.rz=:*.cab=:*.wim=:*.swm=:*.dwm=:*.esd=:*.jpg=:*.jpeg=:*.mjpg=:*.mjpeg=:*.gif=:*.bmp=:*.pbm=:*.pgm=:*.ppm=:*.tga=:*.xbm=:*.xpm=:*.tif=:*.tiff=:*.png=:*.svg=:*.svgz=:*.mng=:*.pcx=:*.mov=:*.mpg=:*.mpeg=:*.m2v=:*.mkv=:*.webm=:*.ogm=:*.mp4=:*.m4v=:*.mp4v=:*.vob=:*.qt=:*.nuv=:*.wmv=:*.asf=:*.rm=:*.rmvb=:*.flc=:*.avi=:*.fli=:*.flv=:*.gl=:*.dl=:*.xcf=:*.xwd=:*.yuv=:*.cgm=:*.emf=:*.ogv=:*.ogx=:*.aac=:*.au=:*.flac=:*.m4a=:*.mid=:*.midi=:*.mka=:*.mp3=:*.mpc=:*.ogg=:*.ra=:*.wav=:*.oga=:*.opus=:*.spx=:*.xspf=:*.pdf="
