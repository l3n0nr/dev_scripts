#!/usr/bin/env bash
#
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
# ULT_MOD: 05/10/18
# DESCRICAO:
# 	SIMULA O POMODORO
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
#
pomodoro()
{
	# variaveis do programa
	mensagem_inicia="Iniciando o pomodoro com"
	mensagem_finaliza="Acabou a sua sessao!"

	tempo="$(($1*60))"

	echo $mensagem_inicia $tempo "segundos!"
	echo "Contando.."
	sleep $tempo

	echo $mensagem_finaliza 
	notify-send -t 50000 "Pomodoro finalizado!"
}

main()
{
	clear
	if [[ $1 == "" ]]; then
		echo "Por favor, passe como parametro um tempo em minutos"
		echo "Exemplo: $0 10"
	else				
		pomodoro $1
	fi
}

# chamando funcao principal
main $1

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #