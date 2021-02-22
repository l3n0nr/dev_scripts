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
# ULT_MODIFIC:  22/02/21
# VERSAO:		0.41
#
##########################################
#
# TRASH XFCE
input="$HOME/.local/share/Trash/files"

# TRASH HDD
# input="/media/l3n0nr/BACKUP/.Trash-1000/files"

output="/tmp/output_list"
size="50"

# OLD WALLHAVEN PICTURES
read_wallhaven()
{
	input="/home/lenonr/MEGA/Imagens/Pictures/People"
	ls -t $input | grep "wallhaven-" | tail -$size > $output	
}

read()
{
	# TRASH XFCE
	ls -t $input | tail -$size > $output	
}

remove()
{
	remove_file=$(printf $input/ && cat $output | sed -n "$i p")
	
	# verifica se arquivo existe
	if [[ -d $remove_file ]]; then
		echo "$i Removendo diretorio" $remove_file
		rm -Rf -- "$remove_file"

		if [[ $? == 0 ]]; then
			printf "+ Diretorio removido\n"
		else
			printf "- Erro ao remover diretorio\n"
		fi
	elif [[ -e $remove_file ]]; then
		echo "$i Removendo arquivo" $remove_file
		rm "$remove_file"

		if [[ $? == 0 ]]; then
			printf "+ Arquivo removido\n"
		else
			printf "- Erro ao remover arquivo\n"
		fi
	else
		echo "$i Nao existe." $remove_file
		exit 1
	fi
	
}

loop()
{
	for (( i = 1; i < $size; i++ )); do		
		if [[ $? == 0 ]]; then
			remove
			sleep 0.5
		else
			echo "$i - Error no FOR"
			exit 1
		fi
	done
}

check_size_input()
{
	size_input=$(ls $input | wc -l)

	if [[ $size_input < $size ]]; then
		echo "##############################################################################"
		echo "- Remova menos arquivos("$size"), desse jeito ira excluir o diretorio inteiro!"
		echo "* Quantidade maxima de" $size_input "arquivo(s)/diretorio(s) possiveis."
		echo "+ Vá com calma, amigo!"
		echo "##############################################################################"
		exit 1
	else
		loop
	fi
}

main()
{
	clear
	read

	check_size_input
}

main