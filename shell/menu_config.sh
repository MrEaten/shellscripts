#!/bin/sh

################################################################################
### Menu for choosing common config files using rofi -dmenu
################################################################################

menu='rofi -dmenu'

list='alacritty\nbspwm\nConfig Files\ni3\nsxhkd\ntmux\nnvim\nzsh'

file=$(echo -e $list | $menu)

case $file in
	alacritty) alacritty -e nvim ~/.config/alacritty/alacritty.yml;;
	bspwm) alacritty -e nvim ~/.config/bspwm/bspwmrc;;
	i3) alacritty -e nvim ~/.config/i3/config;;
	sxhkd) alacritty -e nvim ~/.config/sxhkd/sxhkdrc;;
	nvim) alacritty -e nvim ~/.config/nvim/init.vim;;
	"Config Files") alacritty -e nvim ~/scripts/shell/menu_config.sh;;
	zsh) alacritty -e nvim ~/.config/zsh;;
	tmux) alacritty -e nvim ~/.config/tmux/config;;
esac
