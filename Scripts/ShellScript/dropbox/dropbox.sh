#!/bin/bash

# # # # # # # # # # # # #
#   DESENVOLVIDO POR    #
# # # # # # # # # # # # #
#
# por lenonr(Lenon Ricardo)
#       contato: <lenonrmsouza@gmail.com>
#
# # # # # # # # # # # # # # # # # # # # # # # # # #
# # data de criação do script:    [06/04/18]      #
# # ultima ediçao realizada:      [19/06/18]      #
# # # # # # # # # # # # # # # # # # # # # # # # # #
#
# DESCRICAO
# Reinicia dropbox automaticamente

f_dropbox()
{
	var_dropbox=$(which dropbox)

	if [[ -e $var_dropbox ]]; then
		# fechando dropbox
		printf "\nReiniciando Dropbox"
		printf "\nReiniciando Dropbox" >> /tmp/dropbox.txt

		dropbox stop 2>> /dev/null

		# testa_dropbox=$(pgrep -f dropbox)
		# while [[ $testa_dropbox != 0 ]]; do
		# 	printf "\n mata dropbox"
		# 	kill $testa_dropbox	
		# done	

		echo $?

		# if [[ $? -eq 1 ]]; then
			# verificando se dropbox foi fechado corretamente
			if [[ $? -eq 0 ]]; then
				printf "\nIniciando Dropbox"
				printf "\nIniciando Dropbox" >> /tmp/dropbox.txt

				# iniciando dropbox
				dbus-launch dropbox start 2>> /dev/null 
			else
				printf "\nERRO" >> /tmp/dropbox.txt
			fi
		# fi	
	else
		printf "\nDropbox nao esta instalado nesse sistema"
	fi
}

main()
{
	clear

	f_dropbox
}

## chamando funcao
main

#dropbox stop && DBUS_SESSION_BUS_ADDRESS="" && dropbox start
#dropbox start -i