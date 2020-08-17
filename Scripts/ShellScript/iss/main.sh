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
	source iss_pass.sh
}

crew_ISS()
{	
	check_files

	source crew.sh	
}

report_ISS()
{
	source report.sh
}

main()
{
	clear	

	if [[ $1 == "pass" ]]; then
		pass_ISS
	elif [[ $1 == "crew" ]]; then
		crew_ISS
	elif [[ $1 == "report" ]]; then
		report_ISS
	else
		echo "Need one parameter | pass - crew - report" 
	fi	
}

main $1