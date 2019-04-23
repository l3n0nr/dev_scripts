#!/usr/bin/env bash
#
#########################
# data criacao = 17/03/19
# ultima modif = 23/04/19
# versao       = 0.26
#########################
#
## VARIAVEIS
## chamando arquivo externo com variaveis
source variables.conf

## verifica quantidade de linhas do arquivo
verifica=$(wc -l $posts_twitter | awk '{print $1}')

## verifica data do scanner
data=$(date)

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
	## verifica quantidades de linhas do arquivo com a lista de links
	qtd="3"

	if [[ $verifica -le $qtd ]]; then
		echo "CHECK | $data" >> $saida_log
		source /home/lenonr/Github/dev_scripts/Scripts/Python/leitor_url/main.sh
	else
		echo "NOT CHECK | $data" >> $saida_log
		exit 0
	fi
}

main()
{
	check_files
	check_scan
}

## chamando funcao principal
main