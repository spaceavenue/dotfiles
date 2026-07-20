set -gx XDG_CONFIG_HOME "$HOME"/.config
set -gx XDG_CACHE_HOME  "$HOME"/.cache
set -gx XDG_DATA_HOME   "$HOME"/.local/share
set -gx XDG_STATE_HOME  "$HOME"/.local/state
set -gx FISH_LOGIN_ENV_LOADED 1

not status is-interactive && return

set -g fish_greeting
set -g fish_history_derivative true

set -gx WGETRC "$XDG_CONFIG_HOME"/wgetrc
set -gx NPM_CONFIG_USERCONFIG "$XDG_CONFIG_HOME"/npm/npmrc
set -gx RIPGREP_CONFIG_PATH "$XDG_CONFIG_HOME"/ripgrep/config

set -gx GNUPGHOME "$XDG_DATA_HOME"/gnupg

set -gx MYSQL_HISTFILE "$XDG_STATE_HOME"/mariadb_history

set -gx EDITOR "/usr/bin/nvim"
set -gx VISUAL $EDITOR

set -gx PAGER "bat -p --paging=always"
set -gx GIT_PAGER $PAGER

# bat gets confused because aurutils actually opens a directory.
# could be set to nvim? maybe?
set -gx AUR_PAGER yazi
set -gx AUR_PACMAN_AUTH run0

