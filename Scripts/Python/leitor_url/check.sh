#!/usr/bin/env bash
#
#########################
# data criacao = 17/03/19
# ultima modif = 17/03/19
# versao       = 0.10
#########################
#
## variaveis
arquivo="/home/lenonr/Dropbox/Arquivos/Twitter/posts"
saida="/tmp/twitter_scanner"
verifica=$(cat $arquivo)
data=$(date)

check()
{
	## verificando se arquivo esta vazio
	if [[ -z $verifica ]]; then
		echo "Scaneando sites | $data" >> $saida
		source main.sh
	else
		echo "Escaneamento nao é necessário | $data" >> $saida
		exit 0
	fi

}

main()
{
	if [[ -e $saida ]]; then
		touch $saida
	fi

	check
}

## chamando funcao principal
main