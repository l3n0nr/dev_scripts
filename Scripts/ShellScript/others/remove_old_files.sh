#!/usr/bin/env bash
#
##########################################
#
# DESCRICAO: Remove arquivos velhos de um diretorio especifico
# AUTOR: 	 l3n0nr | lenonrmsouza@gmail
#
##########################################
#
# DATA_CRIACAO: 19/02/21
# ULT_MODIFIC:  20/02/21
# VERSAO:		0.10
#
##########################################
#
input="/home/lenonr/MEGA/Imagens/Pictures/People"
output="/tmp/wallpapers"
size="1"

read()
{
	ls -t $input | grep "wallhaven-" | tail -$size > $output	
}

remove()
{
	remove_file=$(printf $input/ && cat $output | sed -n "$i p")
	
	if [[ -e $remove_file ]]; then
		rm "$remove_file"
	else
		echo "$i - Arquivo nao existe"
		exit 1
	fi
	
}

main()
{
	clear
	read

	for (( i = 1; i < $size; i++ )); do		
		if [[ $? == 0 ]]; then
			remove
		else
			echo "ERROR"
			exit 1
		fi
		remove
	done
}

main