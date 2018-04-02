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
# # ultima ediçao realizada:      [01/04/18]      #
# # # # # # # # # # # # # # # # # # # # # # # # # #
#
#
# variaveis de ambiente
SERVIDOR="google.com"						# servidor para teste
TEMPO=300s									# tempo de intervalo do teste(segundos) - 5 minutos
TEMPO_DATE="300 seconds"

# realiza teste enquanto valor de internet for "0"(falso)	
func_internet()
{
	# intervalo de tempo 
	while true; do	
		# ====================================== #
		# testando conexao internet
		# ====================================== #	
		ping -q -c1 $SERVIDOR > /dev/null
		# ping -q -c1 $SERVIDOR >> /tmp/internet.txt

		# verificando valor
		# if [[ $? = "0" ]]; then	
		if [ $? = "0" ]; then	
			MENSAGEM="Internet funcionando!"
			echo $MENSAGEM >> /tmp/internet.txt
			date >> /tmp/internet.txt
			printf "\n" >> /tmp/internet.txt

			# notify-send -u normal "$MENSAGEM" -t 2500
		else				
			MENSAGEM="Sem conexao ao link $SERVIDOR!"
			date >> /tmp/internet.txt
			echo $MENSAGEM >> /tmp/internet.txt

			notify-send -u normal "$MENSAGEM" -t 5000		
		fi	

		# mostrando proxima verificacao
		echo "Proxima verificação em:" >> /tmp/internet.txt
		date -d "$TEMPO_DATE" >> /tmp/internet.txt

		# aguardando tempo especifico
		sleep $TEMPO
	done
}

echo "Inicio do script" > /tmp/internet.txt
date >> /tmp/internet.txt
printf "\n" >> /tmp/internet.txt

# chamando funcao
func_internet

date >> /tmp/internet.txt
