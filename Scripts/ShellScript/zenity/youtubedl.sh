#!/bin/bash
#
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
#                                                                             #
#                           CABEÇALHO DO SCRIPT                               #
#                                                                             #
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
#
# # # # # # # # # # # # #
#   FONTES DE PESQUISA  #
# # # # # # # # # # # # #
#
# Slackjeff 
# 	Source: <https://notabug.org/jeffersonrocha/youtube2mp3>
#
# Github - youtube-dl
#	Source: <https://github.com/rg3/youtube-dl/>
#
# Fabio Reis - Zenity – Exibindo caixas de diálogo com scripts do Shell no Linux
#	Source: <http://www.bosontreinamentos.com.br/shell-script/zenity-exibindo-caixas-de-dialogo-com-scripts-do-shell-no-linux/>
#
# How do I prompt users with a GUI dialog box to choose file/directory path, via the command-line?
#	Source: <https://askubuntu.com/questions/488350/how-do-i-prompt-users-with-a-gui-dialog-box-to-choose-file-directory-path-via-t>
#
# How to set up default download location in youtube-dl
# 	Source: <https://stackoverflow.com/questions/32482230/how-to-set-up-default-download-location-in-youtube-dl>
#
# A complete zenity dialog examples 2
#	Source: <http://linux.byexamples.com/archives/265/a-complete-zenity-dialog-examples-2/>
#
# # # # # # # # # # # # #
#   DESENVOLVIDO POR    #
# # # # # # # # # # # # #
#
# por lenonr(Lenon Ricardo)
#       contato: <lenonrmsouza@gmail.com>
#
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 
#									      									  #
#	If I have seen further it is by standing on the shoulders of Giants.      #
#	(Se vi mais longe foi por estar de pé sobre ombros de gigantes)	          #
#							~Isaac Newton	      							  #
#									      									  #
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 
#
# # # # # # # # # # # # # # # # # # # # # # # # # #
# # data de criação do script:    [14/06/18]      #             
# # ultima ediçao realizada:      [15/06/18]      #
# # # # # # # # # # # # # # # # # # # # # # # # # #
#
# Legenda: a.b.c.d.e.f
# 	a = alpha[0], beta[1], stable[2], freeze[3];
# 	b = erros na execução;
# 	c = interações com o script;
# 	d = correções necessárias; 
# 	e = pendencias
# 	f = desenvolver
#
# variaveis do script
	# versao do script
	versao="0.0.21.0.0.0"  

	# formato do audio
	format=mp3

	# variaveis	
	quality="320k"	

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
#                                                                             #
#                           CORPO DO SCRIPT                               	  #
#                                                                             #
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
#
f_verifca_sucesso()
{
	[[ $? == "0" ]] && \
		zenity --notification \
			   --text "Download finalizado!"		
}

f_verifica_erro()
{
	# se usuario clicar em cancelar no zenity - sai do script
	[[ $? == "1" ]] && \
		exit 1
}

# definindo funcoes
f_youtube-dl()
{
	url=$(zenity --title="Youtube-DL Audio Conversor?" \
				 --text "Digite a URL do video?" \
				 --entry) ; f_verifica_erro

	local=$(zenity --file-selection \
				   --directory \
				   --title="Selecione o local para salvar") ; f_verifica_erro

	youtube-dl --embed-thumbnail \
			   --audio-quality "$quality" \
			   --extract-audio \
			   --audio-format "$format" -o "$local/%(title)s.%(ext)s" "$url" ; f_verifca_sucesso 						
}

f_vetor()
{	
	videos=$(zenity --text-info \
					--width 530 \
					--height 300 \
					--font='DejaVu Sans Mono' \
					--editable) ; f_verifica_erro

	local=$(zenity --file-selection \
				   --directory \
				   --title="Selecione o local para salvar") ; f_verifica_erro

	echo $videos > $local/lista.txt && cat $local/lista.txt > $batch-file

	# exec < $local/lista.txt

	# while read -r line
	# do
	    youtube-dl --embed-thumbnail \
			   --continue \
			   --audio-quality "$quality" \
			   --extract-audio \
			   --audio-format "$format" -o "$local/%(title)s.%(ext)s" "$videos"; f_verifca_sucesso		   
	# done
	
	# exec < "$terminal"

	# youtube-dl --embed-thumbnail \
	# 		   --audio-quality "$quality" \
	# 		   --extract-audio \
	# 		   --audio-format "$format" -o "$local/%(title)s.%(ext)s" "$videos"	

	# for url in "$@" do
	# 	youtube-dl  --embed-thumbnail \
	# 			 	--extract-audio \
	#   			 	--audio-quality "$quality" \
	#   			 	--audio-format "$format" -o "$local/%(title)s.%(ext)s" "$url" 
	# done
}

main()
{
	# limpando a tela
	clear 

	start=$(zenity  --list  \
					--text "Iniciar como.." \
    				--radiolist \
    				--column "Marcar" \
    				--column "Qtd. Videos" \
    							TRUE Single \
    							FALSE Many) && f_verifica_erro

    if [[ $start == "Single" ]]; then
    	f_youtube-dl
    else
    	f_vetor
    fi
}

## chamando funcao principal
main

#
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
#                                                                             #
#                           RODAPE DO SCRIPT                                  #
#                                                                             #
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #