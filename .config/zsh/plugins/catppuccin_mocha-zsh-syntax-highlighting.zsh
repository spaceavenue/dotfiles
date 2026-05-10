ZSH_HIGHLIGHT_HIGHLIGHTERS=(main cursor)
typeset -gA ZSH_HIGHLIGHT_STYLES

## Comments
ZSH_HIGHLIGHT_STYLES[comment]='fg=#6e6a86,italic' # Muted purple-grey for comments 

## Functions/Methods
ZSH_HIGHLIGHT_STYLES[alias]='fg=#f38ba8'
ZSH_HIGHLIGHT_STYLES[suffix-alias]='fg=#f38ba8'
ZSH_HIGHLIGHT_STYLES[global-alias]='fg=#f38ba8'
ZSH_HIGHLIGHT_STYLES[function]='fg=#f38ba8'
ZSH_HIGHLIGHT_STYLES[command]='fg=#f38ba8'
ZSH_HIGHLIGHT_STYLES[precommand]='fg=#f38ba8,italic'
ZSH_HIGHLIGHT_STYLES[builtin]='fg=#f38ba8'
ZSH_HIGHLIGHT_STYLES[reserved-word]='fg=#f38ba8'
ZSH_HIGHLIGHT_STYLES[hashed-command]='fg=#f38ba8'

## Arguments and Options
ZSH_HIGHLIGHT_STYLES[autodirectory]='fg=#ffd1db,italic'
ZSH_HIGHLIGHT_STYLES[single-hyphen-option]='fg=#ffd1db'
ZSH_HIGHLIGHT_STYLES[double-hyphen-option]='fg=#ffd1db'

## Punctuation and Delimiters
ZSH_HIGHLIGHT_STYLES[commandseparator]='fg=#89b4fa'
ZSH_HIGHLIGHT_STYLES[redirection]='fg=#89b4fa'
ZSH_HIGHLIGHT_STYLES[command-substitution-delimiter]='fg=#cba6f7'
ZSH_HIGHLIGHT_STYLES[command-substitution-delimiter-quoted]='fg=#cba6f7'
ZSH_HIGHLIGHT_STYLES[command-substitution-delimiter-unquoted]='fg=#cba6f7'
ZSH_HIGHLIGHT_STYLES[process-substitution-delimiter]='fg=#cba6f7'
ZSH_HIGHLIGHT_STYLES[back-quoted-argument-delimiter]='fg=#cba6f7'

## Strings
ZSH_HIGHLIGHT_STYLES[command-substitution-quoted]='fg=#cba6f7'
ZSH_HIGHLIGHT_STYLES[single-quoted-argument]='fg=#cba6f7'
ZSH_HIGHLIGHT_STYLES[double-quoted-argument]='fg=#cba6f7'
ZSH_HIGHLIGHT_STYLES[back-quoted-argument]='fg=#cba6f7'
ZSH_HIGHLIGHT_STYLES[back-double-quoted-argument]='fg=#cba6f7'
ZSH_HIGHLIGHT_STYLES[back-dollar-quoted-argument]='fg=#cba6f7'
ZSH_HIGHLIGHT_STYLES[dollar-quoted-argument]='fg=#ffd1db'
ZSH_HIGHLIGHT_STYLES[dollar-double-quoted-argument]='fg=#ffd1db'
ZSH_HIGHLIGHT_STYLES[single-quoted-argument-unclosed]='fg=#89b4fa'
ZSH_HIGHLIGHT_STYLES[double-quoted-argument-unclosed]='fg=#89b4fa'
ZSH_HIGHLIGHT_STYLES[back-quoted-argument-unclosed]='fg=#89b4fa'
ZSH_HIGHLIGHT_STYLES[dollar-quoted-argument-unclosed]='fg=#89bf4a'
ZSH_HIGHLIGHT_STYLES[rc-quote]='fg=#f9e2af'

## Paths and Variables
ZSH_HIGHLIGHT_STYLES[path]='fg=#ffd1db,underline'
ZSH_HIGHLIGHT_STYLES[path_pathseparator]='fg=#89b4fa,underline'
ZSH_HIGHLIGHT_STYLES[path_prefix]='fg=#ffd1db,underline'
ZSH_HIGHLIGHT_STYLES[path_prefix_pathseparator]='fg=#f89b4fa,underline'
ZSH_HIGHLIGHT_STYLES[assign]='fg=#a6e3a1'
ZSH_HIGHLIGHT_STYLES[named-fd]='fg=#a6e3a1'
ZSH_HIGHLIGHT_STYLES[numeric-fd]='fg=#a6e31'

## UI Elements
ZSH_HIGHLIGHT_STYLES[cursor]='fg=#ffd1db'
ZSH_HIGHLIGHT_STYLES[default]='fg=#ffd1db'
ZSH_HIGHLIGHT_STYLES[unknown-token]='fg=#cca0a8'
ZSH_HIGHLIGHT_STYLES[globbing]='fg=#ffd1db'
ZSH_HIGHLIGHT_STYLES[history-expansion]='fg=#cba6f7'
