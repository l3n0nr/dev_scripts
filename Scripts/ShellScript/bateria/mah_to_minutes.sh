#!/usr/bin/env bash
#
#######################
## DATA CRIA: 31/07/19
## ULT_MODIF: 31/07/19
#######################
#
time_rest()
{
	time_rest_battery="$(ibam --totalbatteryadaptive | grep "Adapted total battery time:"| awk {'print $5'})"

	echo "Tempo apromixado:" $time_rest_battery
}

main()
{
	time_rest
}

## chamando funcao principal
main