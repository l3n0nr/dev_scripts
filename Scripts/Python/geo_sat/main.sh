#!/usr/bin/env bash
#
#######################
# dat_criacao: 16/12/19
# ult_modific: 17/12/19
# versao: 		0.15.1
#######################
#
# VERIFICAR; Posicao "0" do array na leitura do arquivo
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

check_file()
{
	if [[ -z $output_sat ]]; then
		# echo "arquivo nao existe"
		echo

		if [[ -s $output_sat ]]; then
			# echo "arquivo cheio"
			echo 
		else
			# echo "arquivo vazio"

			search_sat
		fi
	else
		# echo "arquivo existe"
		echo
	fi
}

interface_dialog()
{
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
		"5" "US West Coast" \
		"6" "Northern Pacific" \
		"7" "Northern South America" \
		"8" "Southern South America"
	) ; f_verifica

	value = "1"

	for (( i = 0; i <= ${#array_sats[@]}; i++ )); do		
		if [[ $choice = $i ]]; then
			## show in browser and put in background
			echo "PEGOU"
			$browser $(sed ''$i'!d' $output_sat) &

			## realiza download do arquivo
			# wget -c $(sed ''$i'!d' $output_sat)
		fi		
	done
}

main()
{
	while [[ TRUE ]]; do
		# clear
		interface_dialog
	done	
}

main