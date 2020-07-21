#!/bin/sh

menu='rofi -dmenu -width 12 -lines 2 -p Scratch'

list='Term\nKeePassXC'

if [[ -z $1 ]]
then
	window=$(echo -e $list | $menu)
else 
	window=$1
fi


function toggle_terminal {
	if xdotool search --onlyvisible --name Scratchpad windowunmap
	then
		:
	elif xdotool search --name Scratchpad windowmap 
	then
		:
	else 
		alacritty -t Scratchpad &
	fi
}

function toggle_keepass {
	if xdotool search --onlyvisible --name KeePassXC windowunmap
	then
		:
	elif xdotool search --name KeePassXC windowmap 
	then
		:
	else 
		keepassxc &
	fi
}

case $window in
	Term) toggle_terminal;;
	KeePassXC) toggle_keepass;;
	
esac

