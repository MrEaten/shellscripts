#!/bin/sh


menu='rofi -dmenu'

list='Qtile-Restart\nQtile-Logout'

file=$(echo -e $list | $menu)

case $file in
	Qtile-Restart) qtile-cmd -o cmd -f restart;;
	Qtile-Logout) qtile-cmd -o cmd -f shutdown;;
esac
