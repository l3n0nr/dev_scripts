#!/usr/bin/env bash
#
#######################
# dat_criacao: 03/12/19
# ult_modific: 27/02/20
# versao: 		 0.36
#######################
#
pass_ISS()
{
	## call external file
	source location.conf

	output_pass="/tmp/iss_pass.txt"	

	if [[ -z $output_pass ]]; then
		touch $output_pass
	fi	

	pass="http://api.open-notify.org/iss-pass.json?lat=$lat&lon=$lon"
	
	lynx --dump $pass | \
	jq '.response[]' > $output_pass

	printf "Your location:\n" && \
	cat location.conf && printf "\n\n" && \
	cat $output_pass && \
	printf "\n"
}

crew_ISS()
{
	output_crewISS_tmp="/tmp/crew_iss.txt.tmp"
	output_crewISS_nmb="/tmp/crew_ISS_number.txt"

	people="http://api.open-notify.org/astros.json"
	data=$(date)

	# call alias external path
	call_twitt="/home/lenonr/Github/dev_scripts/Scripts/Python/twitter_bot/v1.py -t"

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
	
	# echo $output_crewISS
	python $call_twitt "$(echo $output_crewISS)"
}

main()
{
	clear

	if [[ $1 == "pass" ]]; then
		pass_ISS
	elif [[ $1 == "crew" ]]; then
		crew_ISS
	else
		echo "Need one parameter | pass - crew" 
	fi	
}

main $1