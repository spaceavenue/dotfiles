#!/usr/bin/env fish
alias --save summon="doas pacman -S"

alias --save banish="doas pacman -Rns"

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

# only explicitly installed, official packages
alias --save pkg-dump="pacman -Qenq | grep -vf (pacman -Slq mine | psub)"

alias --save pgraph="pacgraph -b '#180004' -l '#cba6f7' -t '#ffd1db' -d '#f38ba8' 2>/dev/null && resvg -w 4000 --monospace-family 'Iosevka Etoile' pacgraph.svg pacgraph.png && rm -frv pacgraph.svg"

