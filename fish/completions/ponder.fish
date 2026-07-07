
function __fish_complete_ponder
    set -l cmdline (commandline -pc)
    set -l query (commandline -ct)

    if string match -q -- '*-0*' $cmdline
        complete -C "pacman -Qi $query"
    else
        complete -C "pacman -Si $query"
    end
end

complete -c ponder -s 0 -d "Search local database instead of repositories"
complete -c ponder -e
complete -c ponder -f -a "(__fish_complete_ponder)"
