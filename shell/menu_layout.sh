#!/bin/sh

menu='rofi -dmenu -width 12 -lines 3 -p Spotify' 

list='tall\nwide\neven\ntiled\nmonocle'

file=$(echo -e $list | $menu)

case $file in
	tall) bsp-layout set tall;;
	wide) bsp-layout set wide;;
	even) bsp-layout set even;;
	tiled) bsp-layout set tiled;;
	monocle) bsp-layout set tall;;
esac
