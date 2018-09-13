#!/usr/bin/env bash
#
# ULT_MOD: 13/09/18
# DESCRICAO
# Simula o aplicativo pomodoro para controle de tempo na execucao das tarefas

# variaveis do programa
mensagem_inicia="Iniciando o pomodoro com"
mensagem_finaliza="Acabou a sua sessao!"

pomodoro()
{
	tempo="$(($1*60))"

	echo $mensagem_inicia $tempo "segundos!"
	echo "Contando.."
	sleep $tempo

	echo $mensagem_finaliza 
}

main()
{
	clear
	if [[ $1 == "" ]]; then
		echo "Por favor, passo como parametro um tempo em minutos"
		echo "Exemplo: $0 10"
	else				
		pomodoro $1
	fi
}

# chamando funcao principal
main $1