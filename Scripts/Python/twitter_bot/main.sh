#!/usr/bin/env bash

twitt()
{
	log_twitter="/tmp/twitter_log"

	acao=$(python v1.py -file)

	if [[ $acao != "" ]]; then
		printf "NEW POST   - " >> $log_twitter && date >> $log_twitter
	else
		printf "NOT POSTED - " >> $log_twitter && date >> $log_twitter			
	fi
}

main()
{
	twitt
}

main