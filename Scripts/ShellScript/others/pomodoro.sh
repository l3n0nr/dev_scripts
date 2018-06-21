#!/bin/bash

pomodoro()
{
	while true; do
		notify-send $mensagem
		sleep $tempo
	done		
}

main()
{
	[[ $1 -eq "" ]] || [[ $2 -eq "" ]] && \
		tempo=15 && mensagem="Hora de se esticar um pouco" || \
		tempo=$1 && mensagem=$2 \

	tempo_con="$tempo"m	

	pomodoro
}

main $1 $2