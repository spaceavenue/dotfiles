#!/usr/bin/env fish
function gui_icons
	set -l icon_name $argv[1]
	gsettings set org.gnome.desktop.interface icon-theme $icon_name
	
	sed 's/^gtk-icon-theme-name=.*/gtk-icon-theme-name='$icon_name'/g' -i $XDG_CONFIG_HOME/gtk-3.0/settings.ini
end
funcsave gui_icons

function gui_font
	set -l font_name $argv[1]
	set -l font_size $argv[2]

	gsettings set org.gnome.desktop.interface font-name "$font_name $font_size"

	sed "s/^gtk-font-name=.*/gtk-font-name='$font_name $font_size'/g" -i $XDG_CONFIG_HOME/gtk-3.0/settings.ini
end
funcsave gui_font
