export PATH=$HOME/.local/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/opt

# put rust libs in better directory
export RUSTUP_HOME=$HOME/.local/lib/rustup
export CARGO_HOME=$HOME/.local/lib/cargo

# set JAVA_HOME
export JAVA_HOME=/usr/lib/jvm/default-runtime/bin

# update PATH
export PATH=$PATH:$JAVA_HOME:$RUSTUP_HOME:$CARGO_HOME

# for firefox (might be unnecessary?)
export MOZ_ENABLE_WAYLAND=1

# for qt apps
export QT_QPA_PLATFORM=wayland
export QT_QPA_PLATFORMTHEME=qt5ct:qt6ct

# apply bat theme
export BAT_THEME="Catppuccin Mocha"

# default wineprefix path
export WINEPREFIX="$XDG_DATA_HOME"/wineprefixes/default

# prevent .java directory from being created
export _JAVA_OPTIONS=-Djava.util.prefs.userRoot="$XDG_CONFIG_HOME"/java

# wget config path
export WGETRC="$XDG_CONFIG_HOME"/wgetrc

# npm config path
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME"/npm/npmrc

# gnupg key storage
export GNUPGHOME="$XDG_DATA_HOME"/gnupg

# history file
HISTFILE="$XDG_STATE_HOME"/zsh_history
HISTSIZE=1000
SAVEHIST=10000

# mariadb history
export MYSQL_HISTFILE="$XDG_STATE_HOME"/mariadb_history

# set editor to nvim
export EDITOR='/usr/bin/nvim'

# load the colors module
autoload -Uz colors && colors

# prompt
PROMPT='[%B%F{9}%n%f%b%F{18}@%f%B%F{19}%m%f%b %F{18}%1~%f ] '

# autocomplete and directory nav options
setopt auto_cd always_to_end menu_complete extended_glob nomatch interactive_comments share_history

autoload -Uz compinit && compinit -d "$XDG_CACHE_HOME"/zsh/zcompdump-$ZSH_VERSION

# style of menu
zstyle ':completion:*' cache-path "$XDG_CACHE_HOME"/zsh/zcompcache
zstyle ':completion:*' menu select
zmodload zsh/complist

_comp_options+=(globdots)

# for being able to select the menu entries
autoload -Uz up-line-or-beginning-search
autoload -Uz down-line-or-beginning-search

# for highlighting the selections
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
