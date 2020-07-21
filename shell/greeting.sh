#!/bin/bash

h=`date +%H`

if [ $h -lt 5 ]; then
  echo Sleep well
elif [ $h -lt 12 ]; then
  echo Good Morning
elif [ $h -lt 18 ]; then
  echo Good afternoon
else
  echo Good evening
fi


