#!/bin/bash

menu='rofi -dmenu -width 12 -lines 3 -p Spotify' 

list='prev\nplaypause\nnext\nfocus\nclose\nlaunch'

file=$(echo -e $list | $menu)

case $file in
	prev) dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.Previous >/dev/null;;
	playpause) dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.PlayPause >/dev/null;;
	next) dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.Next >/dev/null;;
	focus) qtile-cmd -o group 9 -f toscreen >/dev/null;;
	close) killall spotify;;
	launch) spotify &;;
esac
