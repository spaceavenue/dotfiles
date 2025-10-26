#set xdg variables
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_CURRENT_DESKTOP=XFCE

#set zsh config
export ZDOTDIR="$HOME/.config/zsh/"
source "$HOME"/.config/zsh/variables.zsh

#set X server env variables
export XINITRC="$HOME/.config/X11/xinitrc"
export XSERVERRC="$HOME/.config/X11/xserverrc"

#start X server
if [[ ! -v DISPLAY ]]  &&  (( XDG_VTNR == 1 )) then
      xinit /usr/bin/i3 -- -keeptty > ~/.local/share/xorg/xorg.log 2>&1
fi
