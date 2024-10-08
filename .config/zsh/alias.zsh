# config stuff
alias i3conf='nvim ~/.config/i3/config'
alias polyconf='nvim ~/.config/polybar/config.ini'
alias polymod='nvim ~/.config/polybar/modules.ini'

# apps and stuff
alias b=btop
alias sb='doas btop'
alias config='/usr/bin/git --git-dir=/home/sanyaxo/dotfiles/ --work-tree=/home/sanyaxo'
alias bt='bluetoothctl power on && bluetoothctl connect F4:4E:FD:B2:93:30'
alias btdc='bluetoothctl disconnect'
alias nmgui='nm-connection-editor'  

# pacman stuff 
alias pacs='paru -Ss'
alias paci='pacman -Si'
alias dbs='pacman -Qs'
alias dbi='pacman -Qi'
alias dbu='paru -Sy && paru -Qu'
alias summon='doas pacman -S'
alias begone='doas pacman -Rns'
alias update-owo='paru -Syu'

# sudo -> doas
alias sudo=doas
alias uwu=doas

# set cpu mode
alias powersave='doas cpupower frequency-set -g powersave'
alias performance='doas cpupower frequency-set -g performance'

# convenience stuff
alias cat='bat -P'
alias man=batman
alias eza='eza -alhbrs modified'
alias l='eza --icons=always -alhbrs modified'
alias cls='clear; eza -alhbrs modified'
alias mv='mv -v'
alias cp='cp -v'
alias rm='rm -Irv'
function cdl () {
	eza -alhbrs modified $1 && cd $1
}
alias lsblk='lsblk -p -o NAME,FSTYPE,LABEL,UUID,FSAVAIL,FSSIZE,FSUSE%,MOUNTPOINTS'
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias cd..='cd ..'
alias kill="/usr/bin/kill"

alias monitor2='xrandr --output HDMI-1-0 --mode 1920x1080 --right-of eDP-1'
alias kbon='asusctl -k low'
alias kboff='asusctl -k off'
alias kbunfuck='asusctl led-mode static -z 1 -c ffffff'

# keybinds

# [Home/End -> go to beginnng/end of line]
bindkey "^[[H"    beginning-of-line
bindkey "^[[F"    end-of-line

# [Del -> delete character in front]
bindkey "^[[3~"   delete-char

#[Ctrl + Del -> delete word in front]
bindkey "^[[3;5~" delete-word

#[Ctrl + Backspace -> delete world in the back]
bindkey "^H"      backward-delete-word

# [Ctrl + Right/Left Arrow -> move one word forward/backward]
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

# [Up/Down keybinds for hitory substring search]
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
