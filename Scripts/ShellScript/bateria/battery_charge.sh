#!/usr/bin/env bash
#
## DESCRICAO: Verifica informacoes da bateria via TLP
## COMPATIVEL: Debian Stable

f_tlpcheck()
{
	which /usr/sbin/tlp >> /dev/null

	if [[ $? -eq 1 ]]; then
		echo "[-] Voce precisa executar ~apt install tlp -y~ para prosseguir"
		exit 1
	fi
}

f_command()
{
	tlp stat -b | grep "Charge"
	tlp stat -b | grep "current_now"
	# tlp stat -b | grep /sys/class/power_supply/BAT0/current_now | cut -d: -f1
	tlp stat -b | grep /sys/class/power_supply/BAT0/charge_now 
}

check_battery()
{
	## executa em loop ate o usuario cancelar
	while [[ TRUE ]]; do
		clear
		f_command

		# aguarda e executa novamente ou sai
		[[ $? -eq 0 ]] && sleep 1 || exit 1
	done
}

main()
{
	clear	

	if [[ `id -u` -ne 0 ]]; then
		echo "[-] PRECISA DE ROOT PARA EXECUTAR" && exit 1
	fi

	f_tlpcheck
	check_battery
}

## chamando funcao principal
main