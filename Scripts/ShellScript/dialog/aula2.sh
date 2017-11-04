#!/bin/bash
#
###########################################
## CABEÇALHO
#
# Referencia: <https://youtu.be/bRy6aXTG4_Q>
# Titulo Raio X-dialog - Aula 2
#
############################################
## CORPO DO SCRIPT
# caixa de entrada - entrada de dados simples
nome=$(dialog --stdout --title "Caixa de Nome" --backtitle "Caixa de informações do programa" \
	--inputbox "Digite o seu nome" 0 0)

# caixa de entrada - modo password
senha=$(dialog --stdout --title "Caixa de Senha" --backtitle "Caixa de informações do programa" \
	--passwordbox "Digite a sua senha" 0 0)

# mostrando nome digitado
dialog  --title "Bem vindo!" --backtitle "Caixa de Informação" --sleep 3 \
	--infobox "$nome" 0 0

#echo "$nome"
#echo "$senha"
#
############################################
## RODAPE DO SCRIPT
# quebrando linhas no codigo, usa-se \
