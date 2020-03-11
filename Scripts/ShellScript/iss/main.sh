#!/usr/bin/env bash
#
#######################
# dat_criacao: 03/12/19
# ult_modific: 10/03/20
# versao: 		 0.40
#######################
#
source variables.conf

check_files()
{
	if [[ ! -e $validation_iss ]]; then
		touch $validation_iss
	fi

	if [[ ! -e $output_crewISS_file ]]; then
		touch $output_crewISS_file
	fi
}

pass_ISS()
{
	## call external file
	source location.conf	

	if [[ -z $output_pass ]]; then
		touch $output_pass
	fi		
	
	lynx --dump $pass | \
	jq '.response[]' > $output_pass

	printf "Your location:\n" && \
	cat location.conf && printf "\n\n" && \
	cat $output_pass && \
	printf "\n"
}

crew_ISS()
{	
	check_files

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
			
			echo $check_date > $validation_iss
			echo $output_crewISS > $output_crewISS_file

			## TESTES
			cat $output_crewISS_file
			# python $call_twitt "$(echo $output_crewISS)"
		else
			echo "ERROR -" $check_date >> $log_validation_iss
		fi		
	fi	
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