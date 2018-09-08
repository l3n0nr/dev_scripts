#!/usr/bin/env bash
#
############
# DESCRICAO
############
# Criando chaves de verificacao, para execucao do uma funcao especifica
##########
# keyS
# Atualiza
# Checa arquivos
# Realiza limpeza
# [FOR NOW]

file_check="/tmp/key_config.txt"

update_check()
{
	check_update=$(grep "UPDATE" $file_check | tail -1 | sed -e "s;UPDATE:;;g")

	if [[ "$key" != "$check_update" ]]; then
		echo "Atualizado com sucesso - UPDATE"

		echo "UPDATE:"$key >> $file_check
	else
		echo "[UPDATE] - Nada para fazer aqui"
	fi
}

clear_check()
{
	check_clear=$(grep "CLEAR" $file_check | tail -1 | sed -e "s;CLEAR:;;g")

	if [[ "$key" != "$check_update" ]]; then
		echo "Atualizado com sucesso - CLEAR"

		echo "CLEAR:"$key >> $file_check
	else
		echo "[CHECK] - Nada para fazer aqui"
	fi
}

check_files()
{
	check_files=$(grep "FILES" $file_check | tail -1 | sed -e "s;FILES:;;g")

	if [[ "$key" != "$check_files" ]]; then
		echo "Atualizando com sucesso - FILES"

		echo "FILES:"$key >> $file_check
	else
		echo "[FILES] - Nada para fazer aqui"
	fi	
}

# chamando todas as funcoes para serem executadas
main()
{
	key=""$(date +%x-%k)	# hours
	
	clear

	echo "DATA:" $key

	update_check
	clear_check
	check_files
}

## chamando funcao principal
# main

while [[ TRUE ]]; do
	main

	sleep 10
done