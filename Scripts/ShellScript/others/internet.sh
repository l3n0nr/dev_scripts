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
# # ultima ediçao realizada:      [30/03/18]      #
# # # # # # # # # # # # # # # # # # # # # # # # # #
#
# Instruções
# ##########
# 
# O script pode ser utilizado via crontab através de:
# */15 * * * * sh /location_folder/internet.sh 
#				# executando script a cada 15 minutos
#
#
# variaveis de ambiente
SERVIDOR="google.com"						# servidor para teste
# TEMPO=60s									# tempo de intervalo do teste(segundos)

# realiza teste enquanto valor de internet for "0"(falso)	
func_internet()
{
	# intervalo de tempo 
	# sleep $TEMPO

	# date >> /tmp/internet_log.txt

	# ====================================== #
	# testando conexao internet
	# ====================================== #	
	ping -q -c1 $SERVIDOR > /dev/null

	# verificando valor
	# if [[ $? = "0" ]]; then	
	if [ $? = "0" ]; then	
		MENSAGEM="Internet funcionando!"
		notify-send -u normal "$MENSAGEM" -t 2500
	else				
		MENSAGEM="Sem conexao ao link $SERVIDOR!"
		notify-send -u normal "$MENSAGEM" -t 5000		
		# firefox $SERVIDOR
	fi	

	# mostrando mensagem
	# echo $MENSAGEM >> /tmp/internet_log.txt
	# ====================================== #
}

# chamando funcao
func_internet
