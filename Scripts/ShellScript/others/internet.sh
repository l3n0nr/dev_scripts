#!/bin/bash
#
# # # # # # # # # # # # #
#   DESENVOLVIDO POR    #
# # # # # # # # # # # # #
#
# por lenonr(Lenon Ricardo)
#       contato: <lenonrmsouza@gmail.com>
#
# # # # # # # # # # # # # # # # # # # # # # # # # #
# # data de criação do script:    [28/03/18]      #
# # ultima ediçao realizada:      [28/03/18]      #
# # # # # # # # # # # # # # # # # # # # # # # # # #
#
# variaveis de ambiente
SERVIDOR="duckduckgo.com"				# servidor para teste
TEMPO=60								# tempo de intervalo do teste(segundos)
TESTE=$(ping $SERVIDOR -c4; echo $?)	# pingando no servidor, capturando saida

# realiza teste enquanto valor de internet for "0"(falso)	
while true; do	
	# gerando arquivo de log
	date >> /tmp/internet_log.txt

	# verificando valor
	if [[ $TESTE -eq "2" ]]; then
		# mostrando mensagem na tela
		notify-send -u normal "Sem Internet?!" -t 2500

		# escrevendo log no arquivo
		# echo $TESTE >> /tmp/internet_log.txt
	else
		echo "Internet funcionando!" >> /tmp/internet_log.txt
		# notify-send -u normal "Internet funcionando" -t 2500
	fi

	# intervalo de tempo 
	sleep $TEMPO;
done
