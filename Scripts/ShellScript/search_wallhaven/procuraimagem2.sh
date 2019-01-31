#!/bin/bash
#
####################
# DESENVOLVIDO POR #
####################
#
# por lenonr(Lenon Ricardo) 
# 	contato: <lenonrmsouza@gmail.com>
#
#################################################################################
#																				#
#	If I have seen further it is by standing on the shoulders of Giants.		#
#	(Se vi mais longe foi por estar de pé sobre ombros de gigantes)				#
#							~Isaac Newton										#
#																				#
#################################################################################
#
####################################
# ultima modificacao: 		30/01/19
# versão do script: 			0.32
####################################
#
################################################################################
# FUNCOES
#   - Captura imagem da area de trabalho(Xfce4)
#	- Mostra caminho da imagem 
#	- Abre diretamente no $site
#
################################################################################
#limpando a tela
clear
# 

procura()
{
	site="https://alpha.wallhaven.cc"
	local="/home/lenonr/Imagens/Pictures/"

	#criando arquivos temporarios
	touch .caminho.txt .caminhocompleto.txt .base.txt .imagem.txt .numero.txt
	 
	#capturando caminho completo imagem
	xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitor0/workspace$1/last-image > .caminhocompleto.txt
	echo "Caminho do Wallpaper: " 

	#extraindo caminho base
	cat .caminhocompleto.txt | sed -e "s;$local;;g" >  .caminho.txt 

	#mostrando localização da pasta para o usuário
	cat .caminho.txt

	#removendo raiz
	echo "Por favor, digite o caminho da imagem"
	read -p "" local

	#extraindo caminho base
	cat .caminho.txt | sed -e "s;$local;;g" > .base.txt 

	#extraindo wallhaven
	cat .base.txt | sed -e "s;wallhaven-;;g" > .imagem.txt

	#extraindo extensao
	cat .imagem.txt | sed -e "s;.jpg;;g" > .numero.txt 

	# salvando numero da imagem em uma variavel
	url=`cat .numero.txt` 

	# removendo arquivos temporarios
	rm -r .caminho.txt .caminhocompleto.txt .base.txt .imagem.txt .numero.txt

	#iniciando o firefox
	echo "Imagem identificada! Abrindo o Firefox..."
	firefox $site/wallpaper/$url &
}

main()
{
	if [[ $1 == "" ]]; then
		procura 1
	else
		procura $1
	fi	
}


main $1