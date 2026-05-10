#!/bin/bash

SELECTION="$(\
    printf "Lock\nSuspend\nLog out\nSoft reboot\nHard reboot\nShutdown" \
    | fuzzel --dmenu \
    -l 6 \
    -a top-left \
    -w 12 \
    --hide-prompt \
    --mesg="Power Menu: " \
    --message-color=ffd1dbff
)"
   
case $SELECTION in
	*"Lock")
		swaylock;;
	*"Suspend")
		systemctl suspend;;
	*"Log out")
		niri msg action quit;;
	*"Soft reboot")
		reboot;;
	*"Shutdown")
		shutdown now;;
esac
