alias i3conf='nvim .config/i3/config'
alias picomconf='nvim .config/picom/picom.conf'
alias b=bpytop
alias sb='sudo bpytop'
alias config='/usr/bin/git --git-dir=/home/sanyaxo/dotfiles/ --work-tree=/home/sanyaxo'
alias bt='bluetoothctl connect 91:10:52:00:0B:C8'
alias polyconf='nvim .config/polybar/config.ini'
alias polymod='nvim .config/polybar/modules.ini'
alias nmgui='nm-connection-editor'
alias polystart='sh $HOME/scripts/polybar.sh' 
alias cls='clear;ls' 
alias spd='speedtest-cli'
alias ds='dnf search'
alias di='dnf info'
alias kboff='asusctl -k off'
alias kbon='asusctl -k low'
alias ping='ping -c 3 1.1.1.1'
alias update-owo='sudo dnf update -y --refresh'
alias uwu=sudo
alias kbunfuck='asusctl led-mode multi-static -a ffffff'

bindkey  "^[[H"    beginning-of-line
bindkey  "^[[F"    end-of-line
bindkey  "^[[3~"   delete-char
bindkey  "^[[3;5~" delete-word
bindkey "^H" backward-delete-word
