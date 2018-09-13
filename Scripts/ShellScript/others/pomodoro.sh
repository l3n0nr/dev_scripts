#!/usr/bin/env bash
#
# DESCRICAO
# Simula o aplicativo pomodoro para controle das tarefas

# variaveis do programa
inicia="Iniciando o pomodoro com o tempo de"
finaliza="Acabou a sua sessao!"

pomodoro()
{
	if [[ $1 == "" ]]; then
		echo "Por favor, passo como parametro um tempo em minutos"
		echo "Exemplo: $0 10"
	else
		tempo="$(($1*60))"

		echo $inicia $tempo "segundos"
		echo "Contando.."
		sleep $tempo

		notify-send -t 5000 $finaliza
	fi	
}

main()
{
	pomodoro $1
}

# chamando funcao principal
main $1

# pomodoro()
# {
# 	while true; do
# 		notify-send $mensagem
# 		sleep $tempo
# 	done		
# }

# main()
# {
# 	[[ $1 -eq "" ]] || [[ $2 -eq "" ]] && \
# 		tempo=15 && mensagem="Hora de se esticar um pouco" || \
# 		tempo=$1 && mensagem=$2 \

# 	tempo_con="$tempo"m	

# 	pomodoro
# }

# main $1 $2