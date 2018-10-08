#!/usr/bin/env bash
#
## DESCRICAO
# Verifica a quantidade de bateria disponivel

f_command()
{
	tlp stat -b | grep /sys/class/power_supply/BAT0/current_now
	tlp stat -b | grep /sys/class/power_supply/BAT0/charge_now
}

check_battery()
{
	while [[ TRUE ]]; do
		clear
		f_command

		[[ $? -eq 0 ]] && sleep 1 || exit 1
	done
}

main()
{
	clear

	if [[ `id -u` -ne 0 ]]; then
		echo "[-] PRECISA DE ROOT PARA EXECUTAR" && exit 1
	fi

	check_battery
}

## chamando funcao principal
main