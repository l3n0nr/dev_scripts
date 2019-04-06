#!/usr/bin/env bash
#
#########################
# data criacao = 17/03/19
# ultima modif = 06/04/19
# versao       = 0.23
#########################
#
## variaveis
arquivo="/home/lenonr/Dropbox/Arquivos/Twitter/posts"
saida="/tmp/twitter_scanner"
verifica=$(wc -l $arquivo | awk '{print $1}')
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