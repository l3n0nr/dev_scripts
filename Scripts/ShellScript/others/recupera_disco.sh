#!/usr/bin/env bash
#
####################
# DESENVOLVIDO POR #
####################
#
# por lenonr(Lenon Ricardo) 
# 	contato: <lenonrmsouza@gmail.com>
#
##################################
# versão do script: 	  0.20 
# ultima modificao: 	04/04/19
##################################
#
################################################################################
#
# Script testado em
#	-	Xubuntu 16.04
# 	-	Debian Stable
#
################################################################################
#
################################################################################
# FUNCOES
#   -Realizar correções em partições com erro, indicado para partições Linux;
#
################################################################################
#

check_root()
{
	if [[ ! $USER == "root" ]]; then
		echo "Precisa de ROOT para funcionar!!!"

		exit 1
	fi
}

fix()
{
	## verifica se parametro esta vazio
	if [[ $1 == "" ]]; then
		## mostra opcoes e sai
		fdisk -l 
		echo

		exit 1
	else
		particao=$1		
	fi

	#tentando corrigir
	fsck $particao -y -C -f 
}

main()
{
	clear

	check_root
	fix $1
}

## chamando funcao principal
main $1

################################################################################