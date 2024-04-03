#set xdg variables
export XDG_CONFIG_HOME="$HOME/.config/"
export XDG_CACHE_HOME="$HOME/.cache/"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"

#set zsh config
export ZDOTDIR="$HOME/.config/zsh/"

export XINITRC="$HOME/.local/share/X11/xinitrc"
export XSERVERRC="$HOME/.local/share/X11/xserverrc"

xinit /usr/bin/i3 -- -keeptty
