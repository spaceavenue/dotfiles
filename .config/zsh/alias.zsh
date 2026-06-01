# pacman
alias pacs='pacman -Ss'
alias paci='pacman -Si'
alias pars='paru -Ss'
alias pari='paru -Si'
alias dbs='pacman -Qs'
alias dbi='pacman -Qi'
alias summon='doas pacman -S'
alias begone='doas pacman -Rns'
alias kill-orphans='pacman -Qdtq | doas pacman -Rns -- -'

# sudo -> doas
alias sudo=doas
alias uwu=doas

# convenience
alias b=btop
alias sb='doas btop'
alias bt='bluetoothctl power on && bluetoothctl connect'
alias btdc='bluetoothctl disconnect'
alias wificon='nmcli device wifi rescan && nmcli device wifi connect'
alias wifilist='nmcli device wifi rescan && nmcli device wifi list'
alias dotfiles='/usr/bin/git --git-dir=/home/sanyaxo/projects/dotfiles/ --work-tree=/home/sanyaxo'
alias cat='bat -P'
alias man=batman
alias eza='eza --icons=always -alhbrs modified'
alias l='eza'
alias cls='clear; eza'
alias mv='mv -v'
alias cp='cp -v'
alias rm='/usr/bin/rm -Irv'
alias tr='trash-put'
alias ncdu='ncdu -t16'
function cdl () {
	cd $1; eza
}
alias lsblk='lsblk -p -o NAME,FSTYPE,LABEL,UUID,FSUSE%,FSUSED,FSSIZE,MOUNTPOINTS'
alias grep='grep --color=auto'
alias egrep='grep -E --color=auto'
alias fgrep='grep -F --color=auto'
alias cd..='cd ..'
alias kill="/usr/bin/kill"
alias usystemctl='systemctl --user'
alias ujournalctl='journalctl --user'
alias prismlauncher="/usr/bin/prismlauncher --dir /media/PrismLauncher/"

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
bindkey '^[[A'    history-substring-search-up
bindkey '^[[B'    history-substring-search-down
