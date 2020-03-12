#!/usr/bin/env bash
#
#########################
# data criacao = 19/02/20
# ultima modif = 11/03/20
# versao       = 	0.52
#########################
#
## REFERENCE
#	https://docs.spacexdata.com/
#	https://en.wikipedia.org/wiki/List_of_Falcon_9_first-stage_boosters
#
#########################
#
source variables.conf
#
check_internet()
{	
  	ping -c1 $ping_server >> /dev/null

  	[[ ! $? -eq 0 ]] && clear && notify-send -u normal "Sem internet, saindo do script." -t 10000 && exit 1
}

check_files_boosters()
{
	if [[ ! -e $validation_boosters ]]; then
		touch $validation_boosters
	fi

	if [[ ! -e $log_validation_boosters ]]; then
		touch $log_validation_boosters
	fi			
}

check_files_dragon()
{
	if [[ -e $validation_dragon ]]; then
		touch $validation_dragon
	fi

	if [[ -e $log_validation_dragon ]]; then
		touch $log_validation_dragon
	fi			
}

boosters()
{
	check_files_boosters

	keyword="Falcon"
	validation_boosters_check=$(cat $validation_boosters)	

	if [[ -e $file ]]; then		
		search=$(grep -w $keyword $file)		

		# check output - find or not keyword
		if [[ $? == "0" ]]; then		
			# check validation - null or not
			if [[ $check_date == $validation_boosters_check ]]; then
				echo "NOT CHECK -" $check_date >> $log_validation_boosters

			elif [[ $check_date != $validation_boosters_check ]]; then
				output_boosters=$(lynx --dump $url_boosters | \
				jq --indent 0 '.[] | select(.status=="active" or .status=="unknown") | .core_serial, .rtls_landings+.asds_landings' | \
				sed 's/"/ /g' | \
				tr '\n' '| '  | \
				sed 's/$/ [ID | Flights]/g' | \
				sed 's/^./#SpaceX_Boosters availables: /g' | \
				sed 's/$/ (BOT CHECK:'$(date +%d-%h_%H:%M)')/')

				echo $check_date > $validation_boosters		
				echo "CHECK     -" $check_date >> $log_validation_boosters

				## bot post on twitter
				# echo $output_boosters
				python $call_twitt "$(echo $output_boosters)"
			else
				echo "ERROR -" $check_date >> $log_validation_boosters
			fi			
		else
			echo "NOT CHECK -" $check_date >> $log_validation_boosters
		fi
	else
		clear		
		echo "## LAUNCH NOT FOUND ##"
	fi	
}

dragon()
{
	check_files_dragon

	keyword="CRS"
	validation_dragon_check="$(cat $validation_dragon)"

	if [[ -e $file ]]; then		
		search=$(grep -w $keyword $file)

		if [[ $? == "0" ]]; then			
			output_dragon=$(lynx --dump $url_dragon | \
			jq --indent 0 '.[] | select(.status=="active") | .capsule_serial, .reuse_count' | \
			sed 's/"/ /g' | \
			tr '\n' '| '  | \
			sed 's/$/ [ID | Flights]/g' | \
			sed 's/^./#SpaceX_Capsules availables: /g' | \
			sed 's/$/ (BOT CHECK:'$(date +%d-%h_%H:%M)')/')	

			if [[ $check_date == $validation_dragon_check ]]; then
				echo "NOT CHECK -" $check_date >> $log_validation_dragon

			elif [[ $check_date != $validation_dragon_check ]]; then
				echo $check_date > $validation_dragon
				echo "CHECK     -" $check_date >> $log_validation_dragon

				## bot post on twitter
				python $call_twitt "$(echo $output_dragon)"
			else
				echo "ERROR"
			fi			
		else
			echo "NOT CHECK -" $check_date >> $log_validation_dragon
		fi
	else
		clear
		echo "## LAUNCH NOT FOUND ##"
	fi
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