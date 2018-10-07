#!/usr/bin/env bash
#
## DESCRICAO
# Verifica a quantidade de bateria disponivel

f_command()
{
	tlp stat -b | grep /sys/class/power_supply/BAT0/current_now
	# tlp stat -b | grep /sys/class/power_supply/BAT0/charge_now
}

check_battery()
{
	while [[ TRUE ]]; do
		f_command

		[[ $? -eq 0 ]] && sleep 1 || exit 1
	done
}

main()
{
	clear

	check_battery
}

## chamando funcao principal
main