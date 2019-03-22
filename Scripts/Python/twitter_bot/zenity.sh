#!/usr/bin/env bash
#
##############################
# create date:       21/03/19
# last modification: 21/03/19
# version:              0.10
##############################
#
twitt()
{
	mensagem=$(zenity --entry  \
					  --title="" --entry-text="" \
					  --text="                                                                                                                                                                       " \
					  --width="500" --height="100" )
}

main()
{
	twitt

	if [[ -z $mensagem ]]; then
		exit 1
	else		
		python v1.py -t "$mensagem"
	fi	
}

main