#!/usr/bin/env bash
#
###################################
# DESCRICAO
#		Calcula tempo restante de bateria
###################################
#
# DAT_CRIAC	:	07/01/19
# LAST_MOD	:	09/01/19
# VERSAO	:	0.20
# AUTOR 	:	lenonr
#
########################
#
# VARIAVEIS
aguarda="1"

status="$(cat /sys/class/power_supply/BAT0/status)"
full_battery="$(($(cat /sys/class/power_supply/BAT0/charge_full) / 1000))"
charge_now="$(($(cat /sys/class/power_supply/BAT0/charge_now) / 1000))"
current_now="$(($(cat /sys/class/power_supply/BAT0/current_now) / 1000))"
battery_res="$((($full_battery*60)/$current_now))"

battery_res_h="$(($battery_res / 60 ))"
perc_batery="$(((($charge_now * 100)) / $full_battery))"

low_res="$($full_battery * 40)"
med_res="$($full_battery * 60)"
high_res="$($full_battery * 80)"

check()
{
	## verificar comando
	# upower -i /org/freedesktop/UPower/devices/battery_BAT0

	echo "############################################"
	echo "Verified in:" $(date +%kh:%mm:%Ss)
	echo "########################"
	echo "Status battery:" $status
	echo "Charge battery now:" $charge_now "mAh"
	echo "Current resources now:" $current_now "mA"

	echo "Time rest:" $battery_res "min /" $battery_res_h "h / " $perc_batery "%"
	# echo "Shutdown in time(-):" $(date -d $battery_res +%kh:%mm)

	# echo $low_res
	# echo $med_res
	# echo $high_res

	# if [[ $battery_now > $low_res ]] && [[ $battery_now < $med_res ]] ; then
	# 	echo "Consuming: LOW."
	# elif [[ $battery_now > $med_res ]] && [[ $battery_now < $hig_res ]] ; then
	# 	echo "Consuming: MEDIUM."
	# else
	# 	echo "Consuming: HIGH."
	# fi

	echo "############################################"
}

## funcao principal
main()
{
	clear	

	if [[ `id -u` -ne 0 ]]; then
		echo "[-] PRECISA DE ROOT PARA EXECUTAR" && exit 1
	fi
	
	while [[ TRUE ]]; do
		clear
		check
		sleep $aguarda
	done	
}

main