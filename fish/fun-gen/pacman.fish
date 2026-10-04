#!/usr/bin/env fish
alias --save summon="doas pacman -S"

alias --save banish="doas pacman -Rns"

alias --save ascend="doas pacman -Syu"

# alias --save cleanse="doas pacman -Scc"

alias --save inventory="pacman -Qenq | grep -vf (pacman -Slq mine | psub)"

function scry
    argparse 0 -- $argv; or return

    if set -q _flag_0
        pacman -Qs $argv
    else
        pacman -Ss $argv
    end
end
funcsave scry

function ponder
    argparse 0 -- $argv; or return

    if set -q _flag_0
        pacman -Qi $argv
    else
        pacman -Si $argv
    end
end
funcsave ponder

function cleanse
    doas rm -fdr /var/tmp/makepkg/* 2>/dev/null
    doas pacman -Scc
end
funcsave cleanse

function purify
    if pacman -Qdtq >/dev/null
        doas pacman -Rns -- (pacman -Qdtq)
    else
        echo "nothing to do!"
    end
end
funcsave purify

function pgraph
    pacgraph \
        --bg "#18000f" \
        --top "#ffd1db" \
        --dep "#f38ba8" \
        --link "#18000f" \
        --stat "#ffd1db" 2>/dev/null \
        && resvg \
        -w 4000 \
        --monospace-family 'Iosevka Etoile' \
        pacgraph.svg pacgraph.png \
        && rm -f pacgraph.svg $argv
end
funcsave pgraph
