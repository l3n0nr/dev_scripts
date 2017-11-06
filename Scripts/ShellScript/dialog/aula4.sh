#!/bin/bash

# CABEÇALHO
# Referencia: <https://youtu.be/meDIdKr51-0>
# Titulo: <Raio-X dialog - AULA #4>

# CORPO DO SCRIPT

# box de mensagem
#dialog --ok-label " Execute " --msgbox "Tudo bem com voce?" 05 30

# menu
#valor=$(
#dialog  --stdout --title "Automatizador de Tarefas" --backtitle "AutoConfig v4"  \
#	--ok-label "Executar" --cancel-label "Cancelar" \
#	--menu "Selecione uma opção" \
#	0 0 0 \
#	"Atualizar" "1" \
#	"Corrigir" "2" \
#	"Limpar" "3" \
#	"Instalar Programas" "4" \
#	"Instalar Outros" "5" \
#	"Remover programas" "6" \
#	"Sair do Programa" "7" \
#)
#echo $?

# criando loop
while true; do

# capturando valor
valor=$(
dialog  --stdout --title "Automatizador de Tarefas" --backtitle "AutoConfig v4"  \
        --ok-label "Executar" --cancel-label "Cancelar" \
        --menu "O que voce deseja fazer?" \
        0 0 0 \
        "Internet" "Usar Internet" \
        "Ler" "Ler um Texto" \
        "Mensagem" "Mensagem do Dia" \
)

# se valor igual a 1, sai do programa
[ $? -eq 1 ] && break

# deixando toda saidas em minusculo
valor=${valor,,}

# tratando saidas
	case $valor in 
		internet) firefox >&- 2>&- &;;
		ler)
		 dialog --timeout 2 --msgbox "\n O futuro so depende de voce!" 8 40;;
		mensagem) mousepad >&- 2>&- &;;
	esac
done
# imprimindo mensagem na tela
#echo $valor



# RODAPE
# ocultando saida de programas no terminal: >&- 2>&- &
# timeout: espera um tempo e depois sai - usa a saida 255
