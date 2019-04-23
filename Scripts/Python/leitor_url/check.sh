#!/usr/bin/env bash
#
#########################
# data criacao = 17/03/19
# ultima modif = 22/04/19
# versao       = 0.25
#########################
#
## VARIAVEIS
## arquivo que possui a lista de posts
arquivo="/home/lenonr/Dropbox/Arquivos/Twitter/posts"

## saida de log do arquivo
saida="/tmp/twitter_scanner"

## verifica quantidade de linhas do arquivo
verifica=$(wc -l $arquivo | awk '{print $1}')

## verifica data do scanner
data=$(date)

check_files()
{
	if [[ -e $arquivo ]]; then
		touch $arquivo
	fi

	if [[ -e $saida ]]; then
		touch $saida
	fi
}

check_scan()
{
	## verifica quantidades de linhas do arquivo com a lista de links
	qtd="3"

	if [[ $verifica -le $qtd ]]; then
		echo "CHECK | $data" >> $saida
		source /home/lenonr/Github/dev_scripts/Scripts/Python/leitor_url/main.sh
	else
		echo "NOT CHECK | $data" >> $saida
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