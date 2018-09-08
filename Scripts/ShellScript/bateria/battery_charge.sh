#!/usr/bin/env bash
#
check_battery()
{
	while TRUE; do
		tlp stat -b | grep /sys/class/power_supply/BAT0/current_now
		tlp stat -b | grep /sys/class/power_supply/BAT0/charge_now
	done
}

main()
{
	clear

	check_battery()
}

## chamando funcao principal
main()