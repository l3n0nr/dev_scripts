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
# # ultima ediçao realizada:      [06/04/18]      #
# # # # # # # # # # # # # # # # # # # # # # # # # #
#
# DESCRICAO
# Reinicia dropbox automaticamente

var_dropbox=$(which dropbox)

if [[ -e $var_dropbox ]]; then
	# fechando dropbox
	printf "\nReiniciando Dropbox"
	printf "\nReiniciando Dropbox" >> /tmp/dropbox.txt

	dropbox stop 2>> /dev/null

	# verificando se dropbox foi fechado corretamente
	if [[ $? == "0" ]]; then
		printf "\nIniciando Dropbox"
		printf "\nIniciando Dropbox" >> /tmp/dropbox.txt

		# iniciando dropbox
		dbus-launch dropbox start 2>> /dev/null 
	else
		printf "\nERRO" >> /tmp/dropbox.txt
	fi
else
	printf "\nDropbox nao esta instalado nesse sistema"
fi

#dropbox stop && DBUS_SESSION_BUS_ADDRESS="" && dropbox start
#dropbox start -i