#!/usr/bin/env bash
#
## DESCRICAO: Calcula o tempo de duracao da bateria de acordo com mAh
## DATA CRIA: 31/07/19
## ULT_MODIF: 31/07/19
#
# current_now="$(($(cat /sys/class/power_supply/BAT0/current_now) / 100))"
current_now="1500"
mah="$(($(cat /sys/class/power_supply/BAT0/charge_full) / 1000))"
#
check_mah()
{
	battery_life="$((( $mah/$current_now )))"

	echo "Tempo apromixado de bateria" $battery_life "hora(s)."
}

main()
{
	check_mah
}

## chamando funcao principal
main