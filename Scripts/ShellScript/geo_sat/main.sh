#!/usr/bin/env bash
#
#######################
# dat_criacao: 16/12/19
# ult_modific: 12/03/20
# versao: 		0.31
#######################
#
# Formas de utilização 
#	automatica  - dialog
# 	manual 		- parametros
#	help 		- ajuda
#

sats="http://downlinkapp.com/sources.json"
output_sat="/tmp/geo_satelites.txt"
browser="firefox"
local_download="/home/lenonr/Downloads"
array_sats=('GOES-East Full Disk', 'GOES-West Full Disk', \
			'Himawari-8 Full Disk', 'Continental US', \
			'Tropical Atlantic', 'Tropical Pacific',  \
			'US West Coast', 'Northern Pacific', \
			'Northern South America', 'Southern South America')

f_verifica()
{
    [[ $? = "1" ]] && \
        exit 1
}

## search json file | if necessary
search_sat()
{
	lynx --dump $sats | \
	jq '.sources[].url.large' | \
	sed -e 's/^"//g' | sed -e 's/"//g' > $output_sat
}

## check if file exist | execute function search
check_file()
{
	if [[ -z $output_sat ]]; then
		touch $output_sat
	fi

	search_sat
}

interface_dialog()
{
	while [[ TRUE ]]; do		
		check_file

		choice=$( dialog \
			--stdout --ok-label "Buscar" --cancel-label "Cancelar" \
			--menu "Serching images..." \
			0 0 0 \
			"0" "GOES-East Full Disk" \
			"1" "GOES-West Full Disk" \
			"2" "Himawari-8 Full Disk" \
			"3" "Continental US" \
			"4" "Tropical Atlantic" \
			"5" "Tropical Pacific" \
			"6" "US West Coast" \
			"7" "Northern Pacific" \
			"8" "Northern South America" \
			"9" "Southern South America"
		) ; f_verifica	

		download_image
	done
}

interface_basic()
{
	check_file

	choice=$1

	download_image
}

download_image()
{
	for (( i = 0; i <= ${#array_sats[@]}; i++ )); do				
		if [[ $choice = $i ]]; then
			value=$(($i+1))

			echo "Realizando download ->" $(sed ''$value'!d' $output_sat) "<- aguarde..." 
			wget -P $local_download $(sed ''$value'!d' $output_sat) -bqc
			# 	-P : local download
			# 	-b : background
			# 	-q : turn off wget outputs
			# 	-c : continue after stop		

			sleep 3	
		fi
	done
}

help()
{
	for (( i = 0; i < ${#array_sats[@]}; i++ )); do
		echo $i ":" ${array_sats[$i]}
	done
}

main()
{
	if [[ "$1" = "help" ]]; then
		help $1
	elif [[ "$1" = [0-9] ]];then
		interface_basic $1
	elif [[ "$1" = "" ]]; then
		interface_dialog
	else
		echo "ERROR"
	fi
}

main $1