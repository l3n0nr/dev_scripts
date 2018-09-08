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

# day/month/year - hour
key=""$(date +%x-%k%M)		
key_check=$(cat $file_check | tail -1) 

# checa data da chave
time_check()
{	
	echo "$key" >> $file_check
}

key_check()
{
	if [[ "$key_check" != "$key" ]]; then
		echo "Atualizado com sucesso"
	else
		echo "Nada para fazer, ultima modificacao em" $key_check
	fi
}

update_check()
{
	check_update=$(grep "UPDATE" /tmp/key_config.txt | tail -1 | sed -e "s;UPDATE:;;g")

	if [[ "$key_check" != "$check_update" ]]; then
		echo "Atualizado com sucesso"

		echo "UPDATE:"$key >> $file_check
	else
		echo "[UPDATE] Nada para fazer"
	fi
}

clear_check()
{
	echo "CLEAR:"$key >> $file_check
}

check_files()
{
	echo "CHECK:"$key >> $file_check
}

# chamando todas as funcoes para serem executadas
main()
{
	clear

	# time_check
	# key_check
	update_check
	clear_check
	check_files
}

## chamando funcao principal
main