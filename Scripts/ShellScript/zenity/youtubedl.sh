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
# # ultima ediçao realizada:      [16/06/18]      #
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
	versao="0.0.30.0.0.0"  

	# formato do audio
	format=mp3

	# variaveis	
	quality="320k"	

	# iniciando variaveis de verificacao
	url="0"
	local="0"
	start="0"
	option_m="0"

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
#                                                                             #
#                           CORPO DO SCRIPT                               	  #
#                                                                             #
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
#
## status
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

## arquivo unico
# definindo funcoes
f_youtube-dl()
{
	url=$(zenity --title="Youtube-DL Audio Conversor?" \
				 --text "Digite a URL do video?" \
				 --entry) ; f_verifica_erro

	local=$(zenity --file-selection \
				   --directory \
				   --title="Selecione o local para salvar") ; f_verifica_erro
}

f_youtube-dl_audio()
{
	youtube-dl --embed-thumbnail \
			   --contiune \
			   --audio-quality "$quality" \
			   --extract-audio \
			   --audio-format "$format" -o "$local/%(title)s.%(ext)s" "$url" ; f_verifca_sucesso 						
}

f_youtube-dl_video()
{
	youtube-dl -o "$local/%(title)s.%(ext)s" "$url" ; f_verifca_sucesso 						
}

## varios arquivos
f_vetor()
{	
	local=$(zenity --file-selection \
				   --directory \
				   --title="Selecione o local para salvar") ; f_verifica_erro	   	
}

f_vetor_audio()
{	
	echo "# Cole os links, um abaixo do outro..." > $local/list.txt
	echo "# Salve(Ctrl+s) e apenas feche." >> $local/list.txt
	echo >> $local/list.txt

	mousepad $local/list.txt

	youtube-dl --embed-thumbnail \
			   --continue \
			   --audio-quality "$quality" \
			   --extract-audio \
			   --audio-format "$format" -o "$local/%(title)s.%(ext)s" -a $local/list.txt; f_verifca_sucesso && rm $local/list.txt
}

f_vetor_video()
{	
	echo "# Cole os links, um abaixo do outro..." > $local/list.txt
	echo "# Salve(Ctrl+s) e apenas feche." >> $local/list.txt

	mousepad $local/list.txt

	youtube-dl -o "$local/%(title)s.%(ext)s" -a $local/list.txt; f_verifca_sucesso && rm $local/list.txt	   	
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
    	option_m=$(zenity  --list  \
					--text "Midia Type.." \
    				--radiolist \
    				--column "Check" \
    				--column "Format" \
    							TRUE Audio \
    							FALSE Video) && f_verifica_erro
		
		f_youtube-dl
    	if [[ $option_m == "Audio" ]]; then    		
    		f_youtube-dl_audio
    	else
			f_youtube-dl_video
    	fi    	
    else
    	option_m=$(zenity  --list  \
					--text "Midia Type.." \
    				--radiolist \
    				--column "Check" \
    				--column "Format" \
    							TRUE Audio \
    							FALSE Video) && f_verifica_erro

    	f_vetor
    	if [[ $option_m == "Audio" ]]; then    		
    		f_vetor_audio
    	else
			f_vetor_video
    	fi    	
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