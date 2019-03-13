#!/usr/bin/env bash

twitt()
{
	log_twitter="/tmp/launch_log"

	acao=$(python v1.py)

	# if [[ $acao != "" ]]; then
	# 	printf "NEW POST   - " >> $log_twitter && date >> $log_twitter
	# else
	# 	printf "NOT POSTED - " >> $log_twitter && date >> $log_twitter			
	# fi

	printf "LAUNCH   - " >> $log_twitter && date >> $log_twitter
}

main()
{
	twitt
}

main