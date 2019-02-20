#!/usr/bin/env bash

check_mega()
{
	mega="0"

	ps aux | grep megasync | grep Sl >> /dev/null

	if [[ $? == "0" ]]; then		
		mega="1"
	fi

	if [[ $mega == "0" ]]; then
		echo "- Subindo o MEGA"
		megasync &
	elif [[ $mega == "1" ]]; then
		echo "- Derrubando o MEGA"
		killall -9 megasync 
	else		
		echo "Error - Mega"
	fi
}

check_dropbox()
{
	dropbox="0"

	ps aux | grep .dropbox-dist | grep Ssl >> /dev/null

	if [[ $? == "0" ]]; then		
		dropbox="1"
	fi

	if [[ $dropbox == "0" ]]; then
		echo "- Subindo o Dropbox"
		dropbox start >> /dev/null
	elif [[ $dropbox == "1" ]]; then
		echo "- Derrubando o Dropbox"
		killall -9 dropbox >> /dev/null
	else		
		echo "Error - Dropbox"
	fi
}

main()
{
	check_mega
	check_dropbox
}

main
