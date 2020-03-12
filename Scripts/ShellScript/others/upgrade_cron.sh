#!/usr/bin/env bash
#
# # # # # # # # # # # # # # # # # # # # # # # # # # 
# # versão do script:              [0.10]         #
# # data de criação do script:    [13/05/18]      #
# # ultima ediçao realizada:      [13/05/18]      #
# # # # # # # # # # # # # # # # # # # # # # # # # # 
#
log_crontab="/tmp/crontab.txt"
#
data()
{
	date +%x-%X >> $log_crontab
}

update()
{
	apt update >> $log_crontab
}

upgrade()
{
	apt upgrade -y >> $log_crontab
}

upgradable()
{
	apt list --upgradable >> $log_crontab
}

actions()
{
	update
	upgrade
	upgradable
	data
}

main()
{
	echo "" > $log_crontab

	actions
}

main