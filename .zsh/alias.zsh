alias i3conf='nvim ~/.config/i3/config'
alias picomconf='nvim ~/.config/picom/picom.conf'
alias b=bpytop
alias sb='sudo bpytop'
alias config='/usr/bin/git --git-dir=/home/sanyaxo/dotfiles/ --work-tree=/home/sanyaxo'
alias bt='bluetoothctl connect 7F:3E:63:3E:89:52'
alias polyconf='nvim ~/.config/polybar/config.ini'
alias polymod='nvim ~/.config/polybar/modules.ini'
alias nmgui='nm-connection-editor'
alias polystart='sh ~/scripts/polybar.sh' 
alias cls='clear;ls -al' 
alias spd='speedtest-cli'
alias ds='dnf search'
alias di='dnf info'
alias kboff='asusctl -k off'
alias kbon='asusctl -k low'
alias update-owo='sudo dnf update -y --refresh'
alias uwu=sudo
alias kbunfuck='asusctl led-mode static -z 1 -c ffffff'
alias cd..='cd ..'
alias monitor2='xrandr --output HDMI-1-0 --mode 1920x1080 --right-of eDP-1'
alias btdc='bluetoothctl disconnect'
alias lsblk='lsblk -pf'

bindkey  "^[[H"    beginning-of-line
bindkey  "^[[F"    end-of-line
bindkey  "^[[3~"   delete-char
bindkey  "^[[3;5~" delete-word
bindkey "^H" backward-delete-word
