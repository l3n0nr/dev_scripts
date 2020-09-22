#!/usr/bin/env bash
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
# ultima modificacao: 		22/09/20
# versão do script: 			1.15
####################################
#
################################################################################
# FUNCOES
#   - Captura imagem da area de trabalho(Xfce4)
#	- Mostra caminho da imagem 
#	- Abre diretamente no $site
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

	#criando arquivos temporarios
	touch .caminho.txt .caminhocompleto.txt .base.txt .imagem.txt .numero.txt
	 
	#capturando caminho completo imagem
	xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitor0/workspace$escolha/last-image > .caminhocompleto.txt
	echo "Caminho do Wallpaper: " 

	#extraindo caminho base
	cat .caminhocompleto.txt | sed -e "s;$local;;g" >  .caminho.txt 

	#mostrando localização da pasta para o usuário
	cat .caminho.txt

	if [[ $escolha == "0" ]]; then
		#removendo raiz
		echo "Por favor, digite o caminho da imagem"
		read -p "" local	
	fi

	#extraindo caminho base
	cat .caminho.txt | sed -e "s;People/;;g" > .base.txt 

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
	firefox $site/w/$url
}

interface()
{
	escolha=$(dialog \
            --stdout --ok-label "Choice" --cancel-label "Exit" \
            --menu "Select workspace:" \
            0 0 0 \
            "0" "First" \
            "1" "Second" ) ; 

    func_verifica && procura
}

main()
{
	clear

	interface
}


main $1