# general enviornment variables
# export LANG=en_us.UTF-8
export PATH=/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/opt/:$HOME/.local/bin

export CARGO_HOME=$HOME/.local/lib/cargo/
export RUSTUP_HOME=$HOME/.local/lib/rustup/
export JAVA_HOME=/usr/local/java/jdk-20.0.1
export app_java_home=$JAVA_HOME # for FTBApp

export PATH=$PATH:$JAVA_HOME:$CARGO_HOME/bin

# history file variables
HISTFILE="$XDG_DATA_HOME/zsh/zsh_history"
HISTSIZE=10000
SAVEHIST=10000

# disable less history (whys this a thing anyway)
LESSHISTSIZE=0

errfile=$XDG_DATA_HOME/x11/xsession-errors

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

