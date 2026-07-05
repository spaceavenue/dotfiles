# pacman
abbr -a pars 'paru -Ss --bottomup'  # search in repos + aur, repos at the bottom
abbr -a pari 'paru -Si'            # info in repos + aur

abbr -a dbs 'pacman -Qs'   # search in local db
abbr -a dbi 'pacman -Qi'  # info in local db

abbr -a psize 'paru -Ps' # system package size
abbr -a kill-orphans 'pacman -Qdtq | doas pacman -Rns -- -'  # remove orphans

# sudo -> doas
abbr -a sudo run0
abbr -a uwu run0

# better utils
# abbr -a cd 'zoxide'
abbr -a cat 'bat -P'
abbr -a man 'batman --paging=always'
abbr -a eza 'eza --icons=always -alhbrs modified'
abbr -a l 'eza --icons=always -alhbrs modified'
abbr -a cls 'clear; eza --icons=always -alhbrs modified'
abbr -a mv 'mv -v'
abbr -a cp 'cp -v'
abbr -a rm 'rm -Irv'
abbr -a rmf 'rm -frv'
abbr -a grep 'rg'
abbr -a cd.. 'cd ..'
abbr -a kill "/usr/bin/kill"
abbr -a lsblk 'lsblk -p -o NAME,FSTYPE,LABEL,UUID,FSUSE%,FSUSED,FSSIZE,MOUNTPOINTS'

# convenience
abbr -a b btop
abbr -a sb 'doas btop'
abbr -a trs 'trash-put'
abbr -a ncdu 'ncdu -t16'

abbr -a bt 'bluetoothctl connect'
abbr -a btdc 'bluetoothctl disconnect'
abbr -a wificon 'nmcli device wifi rescan && nmcli device wifi connect'
abbr -a wifilist 'nmcli device wifi rescan && nmcli device wifi list'

abbr -a usystemctl 'systemctl --user'
abbr -a ujournalctl 'journalctl --user'

abbr -a prismlauncher "/usr/bin/prismlauncher --dir /media/PrismLauncher/"

