#!/usr/bin/env bash
#
#########################
# data criacao = 17/03/19
# ultima modif = 26/04/19
# versao       = 0.31
#########################
#
## chamando arquivo externo com variaveis
source variables.conf

check_files()
{
	if [[ -e $posts_twitter ]]; then
		touch $posts_twitter
	fi

	if [[ -e $saida_log ]]; then
		touch $saida_log
	fi
}

check_scan()
{
	## verifica quantidade de linhas do arquivo
	verifica=$(wc -l $posts_twitter | awk '{print $1}')

	if [[ $verifica -le $qtd ]]; then
		echo "CHECK | $data" >> $saida_log
		source /home/lenonr/Github/dev_scripts/Scripts/Python/leitor_url/main.sh
	fi
}

internet()
{
  	check_files

  	ping -c1 $site >> /dev/null

  	if [[ ! $? -eq "0" ]]; then
  		echo "NOT CONNECTION | $data" >> $saida_log
  	else
  		check_scan
  	fi	
}

main()
{
	internet
}

## chamando funcao principal
main