#!/usr/bin/env bash
#
# Reference:
# 	<https://www.tecmint.com/systemd-analyze-monitor-linux-bootup-performance/>
#
# BORN DATE: 08/09/18
# LAST DATE: 12/09/18
#####################
#

main()
{
	clear	

	echo "Tempo de inicializacao do sistema"
	systemd-analyze

	echo

	if [[ $1 == "" ]]; then
		echo "Processos que demoram mais para iniciar"
		systemd-analyze blame | head -5
	else
		echo "Processos que demoram mais para iniciar"
		systemd-analyze blame | head -$1
	fi	

	# echo "Servicos iniciados"
  	# systemctl list-unit-files --type=service | grep enabled
}

main $1