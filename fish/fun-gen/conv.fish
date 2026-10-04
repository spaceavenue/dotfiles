#!/usr/bin/env fish
alias --save run0="run0 --background="
alias --save uwu="doas" # :3
alias --save sudo="doas" # not an abbreviation becuase that messes with pasted commands that use sudo

# add a config file blease
alias --save eza="eza --long --all --sort modified --binary --time modified --time-style '+%y-%m-%d %H:%M' --icons=always"

# bat-extras eat your heart out
function ban --wraps man --description "pipe mandoc output to bat"
    set -l BAT_OPTS --language=man --paging=always --style=grid
    if command man -w $argv >/dev/null 2>&1
        man -O width=$COLUMNS $argv | col -bx | bat $BAT_OPTS
    else
        man -O width=$COLUMNS $argv
    end
end
funcsave ban

alias --save bless="bat -p --paging=always"

function bead --wraps bat
    bat --line-range :$argv[1] $argv[2..]
end
funcsave bead

function bail --wraps bat
    bat --line-range -$argv[1]: $argv[2..]
end
funcsave bail

function funcdestroy --wraps "functions -e" --description "destroy a function"
    functions -e $argv
    for func in $argv
        funcsave $func
    end
end
funcsave funcdestroy

function zl --wraps z --description "cd into a dir and list contents"
    z $argv[1] && eza
end
funcsave zl

function rf --wraps rg --description "search and pipe output of rg into fzf"
    rg --color=always --line-number --no-heading --smart-case $argv |
        fzf --ansi \
            --color "hl:-1:underline,hl+:-1:underline:reverse" \
            --delimiter : \
            --preview 'bat --color=always {1} --highlight-line {2}' \
            --preview-window 'up,60%,border-bottom,+{2}+3/3,~3' \
            --bind 'enter:become(hx {1} +{2})'
end
funcsave rf

function list-binds --description 'list niri keybinds'
    bat -p $XDG_CONFIG_HOME/niri/{app,focus-movement}-binds.kdl | sed -E '
    s://.*$::; 
    s/^[[:blank:]]+//; 
    s/[[:blank:]]+$//; 
    /^binds[[:blank:]]*\{/d; 
    /^\}/d; 
    /^$/d;
    '
end
funcsave list-binds

function crop_thumb
    mkdir -p tmp_out
    for file in *.m4a
        ffmpeg -i "$file" -map_metadata 0 \
            -vf "crop=720:720" -c:v mjpeg \
            -disposition:v attached_pic -c:a copy \
            "tmp_out/$file" && mv "tmp_out/$file" "$file"
    end
    rmdir tmp_out
end
funcsave crop_thumb
