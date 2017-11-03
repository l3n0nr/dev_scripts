#!/bin/bash

#Referencia: <https://youtu.be/YdCFCN8Mq8k>

# dialog basico
# dialog --tipo mensangem altura largura
#dialog  --infobox "Primeiro aula" 0 0 
#sleep 2

# dialog yes no
dialog --yesno "Voce deseja logar?" 0 0 

if [[ $? -eq 0 ]]; then
	#echo "Agora voce ja esta logado!"
	dialog --infobox "Agora voce esta logado!" 0 0
	sleep 5
else
	#echo "Voce escolheu sair"
	dialog --infobox "Voce escolheu sair" 0 0
	sleep 5
fi
