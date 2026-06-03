# load the colors module
autoload -Uz colors && colors

# prompt
PROMPT='[%B%F{9}%n%f%b%F{18}@%f%B%F{19}%m%f%b %F{18}%1~%f ] '

# opts for: autocomplete, menu nav and history
setopt auto_cd always_to_end menu_complete extended_glob nomatch interactive_comments share_history

# completions module
autoload -Uz compinit && compinit -d "$XDG_CACHE_HOME"/zsh/zcompdump-$ZSH_VERSION

# menu style and completion cache
zstyle ':completion:*' cache-path "$XDG_CACHE_HOME"/zsh/zcompcache
zstyle ':completion:*' menu select
zmodload zsh/complist

# i forgor what this does
_comp_options+=(globdots)

# to select menu entries
autoload -Uz up-line-or-beginning-search
autoload -Uz down-line-or-beginning-search

# for highlighting selections
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search

# everything else(tm)
source $ZDOTDIR/variables.zsh
source $ZDOTDIR/plugins.zsh
source $ZDOTDIR/alias.zsh
