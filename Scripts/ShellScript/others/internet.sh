#!/bin/zsh
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
# # ultima ediçao realizada:      [29/03/18]      #
# # # # # # # # # # # # # # # # # # # # # # # # # #
#
# variaveis de ambiente
SERVIDOR="google.com"						# servidor para teste
# TEMPO=60s									# tempo de intervalo do teste(segundos)

# realiza teste enquanto valor de internet for "0"(falso)	
while true; do	
	# intervalo de tempo 
	# sleep $TEMPO

	# ====================================== #
	# testando conexao internet
	# ====================================== #	
	ping -c 10 $SERVIDOR >>/dev/null;

	# verificando valor
	if [[ $? = "0" ]]; then				
		echo "Internet funcionando!" >> /tmp/internet_log.txt
		# notify-send -u normal "Internet funcionando" -t 2500
		break;
	else				
		# mostrando mensagem na tela
		notify-send -u normal "Sem Conexao no link $SERVIDOR!" -t 5000
		echo "Sem Internet!" >> /tmp/internet_log.txt		
		break;
	fi	
	# ====================================== #
done
