#!/usr/bin/env bash
#
#########################
# data criacao = 17/03/19
# ultima modif = 12/05/19
# versao       = 0.34
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
	verifica=$(cat $posts_twitter | wc -l)

	if [[ $verifica -le $qtd_min ]]; then		
		echo $data >> $saida_log
		source /home/lenonr/Github/dev_scripts/Scripts/Python/leitor_url/main.sh		
	fi
}

main()
{
	check_files
	check_scan
}

## chamando funcao principal
main