#!/usr/bin/env bash
#
####################
# DESENVOLVIDO POR #
####################
#
# por l3n0nr(Lenon Ricardo) 
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
# ultima modificacao: 		20/02/21
# versão do script: 			1.20
####################################
#
################################################################################
# FUNCOES
#   - Captura imagem da area de trabalho 1(segunda area de trabalho)
#	- Abre diretamente no $site ou remove arquivo
################################################################################

func_verifica()
{
	if [[ $? == "1" ]]; then
		exit 0
	fi
}

procura()
{
	site="https://wallhaven.cc"
	local="/home/lenonr/Imagens/Pictures/"
	escolha="1"

	#criando arquivos temporarios
	touch .caminho.txt .caminhocompleto.txt .base.txt .imagem.txt .numero.txt
	 
	#capturando caminho completo imagem
	xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitor0/workspace$escolha/last-image > .caminhocompleto.txt
	echo "Caminho do Wallpaper: " 

	#extraindo caminho base
	cat .caminhocompleto.txt | sed -e "s;$local;;g" >  .caminho.txt 

	#mostrando localização da pasta para o usuário
	cat .caminho.txt

	nome_arquivo=$(printf $local && cat .caminho.txt)

	#extraindo caminho base
	cat .caminho.txt | sed -e "s;People/;;g" > .base.txt 

	#extraindo wallhaven
	cat .base.txt | sed -e "s;wallhaven-;;g" > .imagem.txt

	#extraindo extensao
	cat .imagem.txt | sed -e "s;.jpg;;g" > .numero.txt 

	# salvando numero da imagem em uma variavel
	url=`cat .numero.txt` 

 	executa=$(dialog --stdout --ok-label "Choice" --cancel-label "Exit" \
            --menu "Select one option:" \
            0 0 0 \
            "0" "Search" \
            "1" "Remove" ) ;

	if [[ $executa == "0" ]]; then
		echo "Imagem identificada! Abrindo o Firefox..."
		firefox $site/w/$url
	else
		echo "Removendo arquivo:" $nome_arquivo	
		sleep 5
		rm $nome_arquivo
	fi   

	# removendo arquivos temporarios
	rm -r .caminho.txt .caminhocompleto.txt .base.txt .imagem.txt .numero.txt
}

main()
{
	clear

	func_verifica && procura
}


main $1