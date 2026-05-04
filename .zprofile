#set xdg variables
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_CURRENT_DESKTOP=niri
export XDG_SESSION_TYPE=wayland

#set zsh config
export ZDOTDIR="$HOME/.config/zsh/"
source "$HOME"/.config/zsh/variables.zsh

#start niri
if [[ -z $DISPLAY && $(tty) == /dev/tty1 ]]; then
  exec niri-session &
fi
