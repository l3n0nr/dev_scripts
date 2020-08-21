#!/usr/bin/env bash

source variables.conf

keyword="ISS_NOW"
validation_iss_check=$(cat $validation_iss)

if [[ -e $output_crewISS_file ]]; then
	if [[ $check_date == $validation_iss_check ]]; then
		echo "NOT CHECK -" $check_date >> $log_validation_iss
	elif [[ $check_date != $validation_iss_check ]]; then
		## name people in space
		lynx --dump $people | \
		jq '.people[].name' | \
		sed -e 's/^"//g' | sed -e 's/"/, /g' | \
		tr -d '\n' > $output_crewISS_tmp

		## number people in space
		lynx --dump $people | \
		jq '.number' 		| \
		tr -d '\n' > $output_crewISS_nmb

		## output in display
		output_crewISS=$(printf '#ISS_NOW - ' && \
						  cat $output_crewISS_nmb && \
						  printf ' astronauts in space: ' && \
						  sed -e 's/..$//g' $output_crewISS_tmp && \
						  printf "." && echo " (BOT CHECK:"$(date +%d-%h_%H:%M)')')	
		
		# logs
		echo $check_date > $validation_iss
		echo $output_crewISS > $output_crewISS_file

		# action
		cat $output_crewISS_file
		# python $call_twitt "$(echo $output_crewISS)"
	else
		echo "ERROR -" $check_date >> $log_validation_iss
	fi		
fi