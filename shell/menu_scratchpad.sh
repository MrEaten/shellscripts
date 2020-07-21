#!/bin/sh

menu='rofi -dmenu'

list='Terminal'

Window=$(echo -e $list | $menu)

case $Window in
	Terminal)
		xdotool search --onlyvisible --name SCRATCHPAD windowunmap ||
		xdotool search --name SCRATCHPAD windowmap;;
esac
