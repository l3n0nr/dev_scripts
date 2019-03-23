#!/usr/bin/env bash
#
#########################
# data criacao = 17/03/19
# ultima modif = 23/03/19
# versao       = 0.16
#########################
#
## variaveis
arquivo="/home/lenonr/Dropbox/Arquivos/Twitter/posts"
# arquivo="/home/lenonr/Downloads/Arquivos/Twitter/posts"
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
	## verificando se arquivo esta vazio
	if [[ $verifica == "0" ]]; then
		echo "Scaneando sites | $data" >> $saida
		source /home/lenonr/Github/dev_scripts/Scripts/Python/leitor_url/main.sh
	else
		echo "Escaneamento nao é necessário | $data" >> $saida
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