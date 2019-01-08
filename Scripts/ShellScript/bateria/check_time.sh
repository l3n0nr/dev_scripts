#!/usr/bin/env bash
#
###################################
# CALCULA TEMPO RESTANTE DE BATERIA
########################
#
# DAT_CRIAC	:	07/01/19
# LAST_MOD	:	08/01/19
# VERSAO	:	0.5
# AUTOR 	:	lenonr
#
########################
#
# ($charge_now * 60) / $current_now

check()
{
	tlp stat -b | grep /sys/class/power_supply/BAT0/charge_now | awk ('print $4')
}

## funcao principal
main()
{
	clear	

	if [[ `id -u` -ne 0 ]]; then
		echo "[-] PRECISA DE ROOT PARA EXECUTAR" && exit 1
	fi
	
	check
}