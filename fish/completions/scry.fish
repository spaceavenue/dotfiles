function __fish_complete_scry
    set -l cmdline (commandline -pc)
    set -l query (commandline -ct)

    if string match -q -- '*-0*' $cmdline
        complete -C "pacman -Qs $query"
    else
        complete -C "pacman -Ss $query"
    end
end

complete -c scry -s 0 -d "Search local database instead of repositories"
complete -c scry -e
complete -c scry -f --escape -k -a "(__fish_complete_scry)"

