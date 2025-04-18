# general enviornment variables
export PATH=$HOME/.local/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/opt

# put rust stuff in better directory
export CARGO_HOME=$HOME/.local/lib/cargo/
export RUSTUP_HOME=$HOME/.local/lib/rustup/

# update PATH
export PATH=$PATH:$JAVA_HOME:$CARGO_HOME/bin

# make some libadwaita-based applications respect gtk theme
export GTK_THEME="catppuccin-mocha-mauve-standard+default"

# default wineprefix path
export WINEPREFIX="$HOME/.local/share/wineprefixes/default"

# prevent .java directory from being created
export _JAVA_OPTIONS=-Djava.util.prefs.userRoot="$XDG_CONFIG_HOME"/java

# prevenet .nv directory from being created
export CUDA_CACHE_PATH="$XDG_CACHE_HOME"/nv

# wget config path
export WGETRC="$XDG_CONFIG_HOME"/wgetrc

# npm config path
export NPM_CONFIG_USERCONFIG=$XDG_CONFIG_HOME/npm/npmrc

# gnupg key storage
export GNUPGHOME="$XDG_DATA_HOME"/gnupg

# history file variables
HISTFILE="$XDG_DATA_HOME/zsh/zsh_history"
HISTSIZE=10000
SAVEHIST=10000

# disable less history (whys this a thing anyway)
LESSHISTSIZE=0

# make clipmenu use rofi
export CM_LAUNCHER=rofi

# preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='/usr/bin/nvim'
else
  export EDITOR='/usr/bin/nvim'
fi

# prompt
PROMPT='[%B%F{9}%n%f%b%F{6}@%f%B%F{13}%m%f%b %F{6}%1~%f ] '

# autocomplete and directory nav options and stuff
setopt auto_cd always_to_end menu_complete extended_glob nomatch interactive_comments

# load the completion module
autoload -Uz compinit
compinit

# style of menu
zstyle ':completion:*' menu select
zmodload zsh/complist

_comp_options+=(globdots)

# for being able to select the menu entries and stuff
autoload -Uz up-line-or-beginning-search
autoload -Uz down-line-or-beginning-search

# for highlighting the selections and stuff
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search

# load the colors module
autoload -Uz colors && colors

