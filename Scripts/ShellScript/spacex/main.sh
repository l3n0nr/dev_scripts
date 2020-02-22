#!/usr/bin/env bash
#
#########################
# data criacao = 19/02/20
# ultima modif = 21/02/20
# versao       = 	0.25
#########################
#
# REFERENCE
#	https://docs.spacexdata.com/
#	https://en.wikipedia.org/wiki/List_of_Falcon_9_first-stage_boosters

boosters()
{
	url="https://api.spacexdata.com/v3/cores"
	lynx --dump $url | \
	jq --indent 0 '.[] | select(.status=="unknown") | .core_serial, .rtls_landings+.asds_landings' | \
	sed 's/"/ /g' | \
	tr '\n' '| '  | \
	sed 's/$/ [ID | Flights]/g' | \
	sed 's/^./#SpaceX_Boosters availables: /g' | \
	sed 's/$/ (BOT CHECK:'$(date +%d-%h_%H:%M)')/'
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

	if [[ $1 == "boosters" ]]; then
		boosters
	elif [[ $1 == "dragon" ]]; then
		dragon
	elif [[ $1 == "missions" ]]; then
		missions
	else
		"ERROR"
	fi
}

## call main function
main $1