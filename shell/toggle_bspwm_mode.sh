#!/bin/sh


if [ ! -z "$(bspc query -N -n focused.tiled)" ];
then
	bspc node -t pseudo_tiled; 
elif [ ! -z "$(bspc query -N -n focused.pseudo_tiled)" ];
then
	bspc node -t floating;
elif [ ! -z "$(bspc query -N -n focused.floating)" ]; 
then 
	bspc node -t tiled; 
fi



