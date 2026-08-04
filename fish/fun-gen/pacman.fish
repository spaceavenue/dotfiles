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

alias --save pgraph="pacgraph -s -b '#180004' -l '#cba6f7' -t '#ffd1db' -d '#f38ba8' && sed 's/Monospace/Iosevka Etoile/g' -i pacgraph.svg && resvg -w 4000 pacgraph.svg pacgraph.png && rm -frv pacgraph.svg"

