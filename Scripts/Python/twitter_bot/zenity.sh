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
	arquivo="/home/lenonr/Github/dev_scripts/Scripts/Python/twitter_bot/v1.py"

	twitt

	if [[ -z $mensagem ]]; then
		exit 1
	else		
		python $arquivo -t "$mensagem"
	fi	
}

main