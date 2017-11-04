#!/bin/bash

#Referencia: <https://youtu.be/YdCFCN8Mq8k>

# dialog basico
# dialog --tipo mensangem altura largura
#dialog  --infobox "Primeiro aula" 0 0 
#sleep 2

# dialog yes no
dialog --yesno "Voce deseja logar?" 0 0 

# forma simplificada do if
[[ $? -eq 0 ]] && \
	dialog --sleep 5 --infobox "Agora voce esta logado!" 0 0 || \
	dialog --sleep 5 --infobox "Voce escolheu sair" 0 0
