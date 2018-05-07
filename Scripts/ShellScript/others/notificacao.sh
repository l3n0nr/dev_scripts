#!/bin/bash

for ((i=0;i <= 219; i++)) do 
	notify-send "$i" 
done
sleep 5
notify-send "GOSTOU?"
