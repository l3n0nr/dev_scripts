#!/bin/bash

# variaveis de configuracao
cores=1 	#  0 - desligado, 1 - ligado

# se o usuario esteja usando o terminal "xterm" esteja sendo usado e se, outro terminal estiver sendo usado ficar colorido
#["$TERM" = "xterm"] && cores=0

#if [ $cores -eq 1 ]; then
#	echo "\033[31]; 1m FOI COLORIDO! \033[m"'
#else
#	echo "NAO FOI COLORIDO!"
#fi

[-z "$DISPLAY" ] && cores=1

# verificando qual display esta sendo utilizado no sistema
# :0.0	 	-	xorg
# (vazia)	-	tela preta

if [ "$CHAVE" = 1]; then
	yad --title "ESTA NO XORG" --text "Esta rodando no Xorg"
else
	dialog --stdout --title "Esta no TTY" --msgbox "Esta no TTY" 00
fi
