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
# ultima modificacao: 		21/03/21
# versão do script: 			1.32
####################################
#
################################################################################
# FUNCOES
#   - Captura imagem da area de trabalho 1(segunda area de trabalho)
#	- Abre diretamente no $site, salva em $tmp_wallpaper ou remove $nome_arquivo
################################################################################

site="https://wallhaven.cc"
local="$HOME/MEGA/Imagens/Pictures/"
escolha="1"
tempo="3"
tmp_wallpaper="$HOME/Downloads/wallpaper_list"

func_verifica()
{
	if [[ $? == "1" ]]; then
		exit 0
	fi
}

check_file()
{
	if [[ -e $tmp_wallpaper ]]; then
		touch $tmp_wallpaper
	fi
}

procura()
{
	#capturando caminho completo imagem
	caminhocompleto=$(xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitor0/workspace$escolha/last-image)

	#extraindo caminho base
	caminho=$(echo $caminhocompleto | sed -e "s;$local;;g")

	# capturando caminho completo
	nome_arquivo=$(printf $local && echo $caminho)

	#extraindo caminho base
	base=$(echo $caminho | sed -e "s;People/;;g")

	#extraindo wallhaven do nome
	imagem=$(echo $base | sed -e "s;wallhaven-;;g")

	#extraindo extensao
	numero=$(echo $imagem | sed -e "s;.jpg;;g")

	# salvando codigo final da imagem
	final=$(echo $numero)

	# montando url
	url=$(echo $site/w/$final)

	# executando dialog
 	executa=$(dialog --stdout --ok-label "Choice" --cancel-label "Exit" \
            --menu "Select one option:" \
            0 0 0 \
            "0" "Search" \
            "1" "Save" \
            "2" "Remove" ) ;

    # acao
	if [[ $executa == "0" ]]; then
		echo "Imagem identificada! Abrindo o Firefox..."
		firefox $url
	elif [[ $executa == "1" ]]; then
		echo "Salvando $url em" $tmp_wallpaper
		sleep $tempo
		echo $url >> $tmp_wallpaper
	elif [[ $executa == "2" ]]; then
		echo "Removendo arquivo" $nome_arquivo	
		sleep $tempo
	else
		echo "Saindo do programa..."
		sleep $tempo
		exit 0
	fi   
}

main()
{
	clear
	func_verifica 
	check_file
	procura
}


main