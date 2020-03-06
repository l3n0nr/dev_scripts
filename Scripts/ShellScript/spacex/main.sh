#!/usr/bin/env bash
#
#########################
# data criacao = 19/02/20
# ultima modif = 06/03/20
# versao       = 	0.40
#########################
#
## REFERENCE
#	https://docs.spacexdata.com/
#	https://en.wikipedia.org/wiki/List_of_Falcon_9_first-stage_boosters
#
#########################
#
source variables.conf

check_internet()
{	
  	ping -c1 $ping_server >> /dev/null

  	[[ ! $? -eq 0 ]] && clear && notify-send -u normal "Sem internet, saindo do script." -t 10000 && exit 1
}

check_files()
{
	if [[ -e $validation ]]; then
		touch $validation
	fi

	if [[ -e $log_validation ]]; then
		touch $log_validation
	fi			
}

boosters()
{
	# create files
	check_files

	# check if file exist	
	keyword="Falcon"
	validation_boosters=$(cat $validation)
	check_date=$(date +%D)

	if [[ -e $file ]]; then		
		search=$(grep -w $keyword $file)		

		# check output - find or not keyword
		if [[ $? == "0" ]]; then
			output_boosters=$(lynx --dump $url | \
			jq --indent 0 '.[] | select(.status=="unknown") | .core_serial, .rtls_landings+.asds_landings' | \
			sed 's/"/ /g' | \
			tr '\n' '| '  | \
			sed 's/$/ [ID | Flights]/g' | \
			sed 's/^./#SpaceX_Boosters availables: /g' | \
			sed 's/$/ (BOT CHECK:'$(date +%d-%h_%H:%M)')/')			

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
			echo "NOT CHECK -" $check_date >> $log_validation
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