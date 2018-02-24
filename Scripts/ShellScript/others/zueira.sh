#!/bin/bash
#
# funcoes dos programas
f_python()
{
	printf "\nCódigos interessantes de Python"
	printf "\nSem nenhum até agora... \_(ツ)_/¯"
	printf "\n\n"
}

f_shell()
{
	printf "\nSeja rápido, seu computador irá ser desligado!  (°ʖ͡°)"
	# shutdown -h 1 "Desligando o computador" #
	printf "\n\n"
}

f_especial()
{
	espeak -k -20 -vpt -p 400 -s 150 "Qual a mensagem que voce quer deixar para as pessoas?" 
	sleep 1 
	espeak -k -20 -vpt+f5 -p 300 -s 250 "Apenas que, Busquem conhecimento!!!" 
}

f_lemensagem()
{
	espeak -k -20 -vpt -p 400 -s 150 $MENSAGEM
}

inicio()
{
	# variavel de verificação
    VAR_ESPEAK=$(which espeak)

    # criando verificação para instalar o docker
    if [[ ! -e $VAR_ESPEAK ]]; then
    	clear
    	printf "ERRO de execução"
    	printf "\nPor favor, instale o espeak para o executar o programa"
    	printf "\nDigite o comando 'sudo apt install espeak -y'"
    	printf "\n"
    else
		# limpa_tela
		clear

		printf "##########################################################\n"
		figlet "Quick-tips TI"
		printf "##########################################################\n"
		# printf "\nBem vindo ao script de Quick-tips(Gavin Roy - \o) de T.I"

		printf "\nSeção de Python, parametro 'python'"
		printf "\nSeção de Shell, parametro 'shell'"
		printf "\nMensagem especial de um grande pensador, parametro 'especial'"
		printf "\n"
	fi
}

# tratando erro de entrada
if [ $# -eq 0 ]; then	
    inicio
fi

## manipulando parametros - parametro acao/mudo(boolean)
for i in "$@"; do
    # verificando o que foi digitado
    case $i in
		especial) f_especial;;
		python) f_python;;
		shell) f_shell;;

		# tratando erro
		*) echo
			MENSAGEM=$i
            f_lemensagem
            exit         
        ;;
    esac    
done

# funcao principal

