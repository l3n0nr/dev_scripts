#!/bin/bash
#
###########################################
## CABEÇALHO
#
# Referencia: <https://youtu.be/bRy6aXTG4_Q>
# Titulo Raio X-dialog - Aula 2
#
############################################
#
# criando variaveis para serem utilizadas no script
#back_title = "Caixa de informação do programa"
#
############################################
## CORPO DO SCRIPT
# caixa de entrada - entrada de dados simples
#nome=$(dialog --stdout --title "Caixa de Nome" --backtitle "$backtitle" \
#	--inputbox "Digite o seu nome" 0 0)

# caixa de entrada - modo password
#senha=$(dialog --stdout --title "Caixa de Senha" --backtitle "$backtitle" \
#	--insecure --passwordbox "Digite a sua senha" 0 0)

## mostrando nome digitado
#dialog  --title "Bem vindo!" --backtitle "$backtitle" \
#	--sleep 3 \
#	--infobox "$nome" 0 0

# mostrando senha digitada
#dialog  --title "Sua senha é" --backtitle "$backtitle" \
#	--sleep 3 \
#	--infobox "$senha" 0 0

#echo "$nome"
#echo "$senha"

#### EXERCICIO PROPOSTOo
# criando variavel de titulo da janela
back_title="Tela de Login"

# criando dialog's
# caixa de nome
nome=$(dialog  --stdout --title "Login" --backtitle "$back_title" \
	--inputbox "Digite o seu nome" 0 0)

# caixa de senha
senha=$(dialog --stdout --title "Login" --backtitle "$back_title" \
	--insecure --passwordbox "Digite a sua senha" 0 0)

# mensagem nome e senha - mostrando o usuario
dialog --title "Usuario e senha do sistema" --backtitle "$back_title" \
	--sleep 5 \
	--infobox "\n Usuário: $nome; Senha: $senha" 5 50
#
############################################
## RODAPE DO SCRIPT
# quebrando linhas no codigo, usa-se \
