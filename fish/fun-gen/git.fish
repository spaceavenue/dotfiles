#!/usr/bin/env fish
function add-commit
	git add $argv[1..-2] && git commit -m $argv[-1]
end
funcsave add-commit

function ignore
	argparse d -- $argv; or return
	for item in $argv[1..-1]
		if set -q _flag_d
			echo "!$item" >> ./.gitignore
		else
			echo "$item" >> ./.gitignore
		end
	end
end
funcsave ignore

