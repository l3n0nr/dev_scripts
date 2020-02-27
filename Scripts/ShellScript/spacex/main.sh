#!/usr/bin/env bash
#
#########################
# data criacao = 19/02/20
# ultima modif = 27/02/20
# versao       = 	0.35
#########################
#
## REFERENCE
#	https://docs.spacexdata.com/
#	https://en.wikipedia.org/wiki/List_of_Falcon_9_first-stage_boosters
#
#########################
#
check_internet()
{
	ping_server="www.google.com"

  	ping -c1 $ping_server >> /dev/null

  	[[ ! $? -eq 0 ]] && clear && notify-send -u normal "Sem internet, saindo do script." -t 10000 && exit 1
}

boosters()
{
	url="https://api.spacexdata.com/v3/cores"
	file="/tmp/launch"
	validation="/tmp/check_boosters"
	log_validation="/tmp/log_boosters"
	call_twitt="/home/lenonr/Github/dev_scripts/Scripts/Python/twitter_bot/v1.py -t"	

	# check if file exist	
	keyword="SpaceX" 	# DEFAULT

	if [[ -e $file ]]; then		
		search=$(grep -w $keyword $file)		

		# check output - find or not keyword
		if [[ $? == "0" ]]; then
			output_boosters=$(lynx --dump $url | \
			jq --indent 0 '.[] | select(.status=="unknown") | .core_serial, .rtls_landings+.asds_landings' | \
			sed 's/"/ /g' | \
			tr '\n' '| '  | \
			sed 's/$/ [ID | Flights]/g' | \
			sed 's/^./#'$keyword'_Boosters availables: /g' | \
			sed 's/$/ (BOT CHECK:'$(date +%d-%h_%H:%M)')/')

			# check if file exist
			if [[ -e $validation ]]; then
				touch $validation
			fi

			validation_boosters=$(cat $validation)
			check_date=$(date +%D)

			# check validation - null or not
			if [[ $check_date == $validation_boosters ]]; then
				echo "NOT CHECK -" $check_date >> $log_validation

			elif [[ $check_date != $validation_boosters ]]; then
				echo $check_date > $validation				
				echo "CHECK     -" $check_date >> $log_validation

				## bot post on twitter
				python $call_twitt "$(echo $output_boosters)"
			else
				echo "ERROR"
			fi			
		else
			echo "NAO ACHOU"
		fi

	else
		clear		
		echo "## LAUNCH NOT FOUND ##"
	fi	
}

dragon()
{
	url="https://api.spacexdata.com/v3/capsules"

	lynx --dump $url | \
	jq --indent 0 '.[] | select(.status=="active") | .capsule_serial, .reuse_count' | \
	sed 's/"/ /g' | \
	tr '\n' '| '  | \
	sed 's/$/ [ID | Flights]/g' | \
	sed 's/^./#SpaceX_Capsules availables: /g' | \
	sed 's/$/ (BOT CHECK:'$(date +%d-%h_%H:%M)')/'
}

missions()
{
	url="https://api.spacexdata.com/v3/payloads"

	lynx --dump $url | \
	jq --indent 0 '.[] | select(.norad_id!=[]) | .payload_id, .orbit_params.regime' | \
	sed 's/"/ /g' | \
	tr '\n' '| '
}


main()
{
	clear

	check_internet

	if [[ $1 == "boosters" ]]; then
		boosters
	elif [[ $1 == "dragon" ]]; then
		dragon
	elif [[ $1 == "missions" ]]; then
		missions
	else
		echo "Parameters availables: boosters | dragon | missions"
	fi
}

## call main function
main $1