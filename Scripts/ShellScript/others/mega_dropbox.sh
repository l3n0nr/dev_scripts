#!/usr/bin/env bash

dropbox="0"
mega="0"

check_mega()
{
	ps aux | grep megasync | grep Sl >> /dev/null

	if [[ $? == "0" ]]; then		
		mega="1"
	fi

}

check_dropbox()
{
	ps aux | grep dropbox | grep Sl >> /dev/null

	if [[ $? == "0" ]]; then		
		dropbox="1"
	fi
}

echo_services()
{
	if [[ $dropbox == "0" ]]; then
		# echo "Dropbox desligado"

		dropbox start
	else
		# echo "Dropbox ligado"
		
		# dropbox stop
		killall -9 dropbox >> /dev/null
	fi

	if [[ $mega == "0" ]]; then
		# echo "Mega desligado"
		
		megasync &
	else		
		# echo "Mega ligado"
		
		killall -9 megasync 
	fi
}

main()
{
	check_mega
	check_dropbox
	echo_services
}

main



#dropbox start 
#megasync 
# dropbox stop