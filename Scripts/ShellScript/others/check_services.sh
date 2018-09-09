#!/usr/bin/env bash
#
# Reference:
# 	<https://www.tecmint.com/systemd-analyze-monitor-linux-bootup-performance/>
#
# BORN DATE: 08/09/18
# LAST DATE: 08/09/18
#####################
#
qtd="5"

main()
{
	clear	

	echo "Tempo de inicializacao do sistema"
	systemd-analyze

	echo

	echo "Processos que demoram mais para iniciar no seu sistema"
	systemd-analyze blame | head -$qtd	
}

main