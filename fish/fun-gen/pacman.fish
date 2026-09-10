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

# a real function (not `alias --save`, which bakes/expands its string at
# save-time) so $palette_* stays live in the generated functions/pgraph.fish -
# re-running this generator always picks up whatever palette.fish holds then.
function pgraph
    pacgraph -b "#$palette_shadow" -l "#$palette_mauve" -t "#$palette_text" -d "#$palette_red" 2>/dev/null && resvg -w 4000 --monospace-family 'Iosevka Etoile' pacgraph.svg pacgraph.png && rm -frv pacgraph.svg $argv
end
funcsave pgraph
