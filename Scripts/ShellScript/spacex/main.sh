#!/usr/bin/env bash
#
#########################
# data criacao = 19/02/20
# ultima modif = 20/02/20
# versao       = 	0.20
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
	jq --indent 0 '.[] | select(.status=="active") | .capsule_serial, .capsule_id, .reuse_count'
}


main()
{
	clear

	# boosters
	dragon
}

## call main function
main