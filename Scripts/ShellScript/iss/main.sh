#!/usr/bin/env bash
#
#######################
# dat_criacao: 03/12/19
# ult_modific: 17/12/19
# versao: 		 0.20
#######################
#
# Reference: http://api.open-notify.org/
#
pass_ISS()
{
	lat="-29.8"
	lon="-55.76"
	pass="http://api.open-notify.org/iss-pass.json?lat=$lat&lon=$lon"

	lynx --dump $pass | \
	jq '.response[]'
}

crew_ISS()
{
	output_crewISS="/tmp/crew_iss.txt"
	output_crewISS_tmp="/tmp/crew_iss.txt.tmp"

	people="http://api.open-notify.org/astros.json"
	data=$(date)

	# call alias external path
	call_twitt="/home/lenonr/Github/dev_scripts/Scripts/Python/twitter_bot/v1.py -t"

	lynx --dump $people | \
	jq '.people[].name' | \
	sed -e 's/^"//g' | sed -e 's/"/, /g' | \
	tr -d '\n' > $output_crewISS_tmp

	printf 'Astronauts in space now: ' && sed -e 's/..$//g' $output_crewISS_tmp && printf ". Source: " && printf $people > $output_crewISS
	
	cat $output_crewISS
	# python $call_twitt 'cat $output_crewISS'
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