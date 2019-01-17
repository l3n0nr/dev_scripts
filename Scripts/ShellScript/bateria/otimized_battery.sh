#!/bin/bash
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
#
# # # # # # # # # # # #
#   DEVELOPMENT BY 	  #
# # # # # # # # # # # #
#
# por lenonr(Lenon Ricardo)
#       contato: <lenonrmsouza@gmail.com>
#
# # # # # # # # # # # # # # # # # # # # # # # ## # # #
# Date create script:    	  		[20/06/18]       #
# Last modification script: 		[07/01/19]       #
# # # # # # # # # # # # # # # # # # # # # # # ## # # #
#
# DESCRICAO DO SCRIPT:
# Otimiza recursos da maquina, para economizar bateria(notebook)
# 	- Desliga/Liga nucleos extras(1-2-3) 
# 		Nucleo 0 sempre ligado - CUIDADO, nunca desliga-lo!!
# 	- Desliga/Liga Wifi
# 	- Reduz/Aumenta o brilho automaticamente
#
## variaveis do script
	# versao do script
	versao="0.51"

	# nome da maquina
	hostname=$(echo $HOSTNAME)

	# configuracoes de brilho padrao
	# brightness_min="1000"
	brightness_med="2440"
	brightness_max="4000"

	# arquivo do bluetooth
	bluetooh="/etc/init.d/bluetooth"

	# chave do script
	chave=1

	# status script
	modo="OFF"

## funcao de verificacao
f_verifica()
{
	[[ $? == "1" ]] && exit 1
}

f_ativa()
{
	if [[ $modo == "OFF" ]]; then		
		## processador
		echo "| ======================================================= |"
		# echo "| Desativando nucleo do processador 1,2,3 respectivamente |"
		echo "| Desativando nucleo do processador 2,3 respectivamente |"
		# echo 0 >> /sys/devices/system/cpu/cpu1/online
		echo 0 >> /sys/devices/system/cpu/cpu2/online
		echo 0 >> /sys/devices/system/cpu/cpu3/online       
		echo "| ======================================================= |"		

		## wifi
		echo "| ======================================================= |"
		echo "| Desativando o wifi |"
		echo 0 >  /sys/class/rfkill/rfkill0/state
		echo "| ======================================================= |"

		## brilho
		echo "| ======================================================= |"
		echo "| Otimizando o brilho  |"
		# echo $brightness_min > /sys/class/backlight/intel_backlight/brightness		
		echo $brightness_med > /sys/class/backlight/intel_backlight/brightness		
		echo "| ======================================================= |"

		## bluetooth
		echo "| ======================================================= |"
		echo "| Desligando o bluetooh  |"
		$bluetooh stop > /dev/null
		echo "| ======================================================= |"

		## contador	
		let chave++
	fi
}

f_desativa()
{
	if [[ $modo == "ON" ]]; then		
		## processador
		echo "| ======================================================= |"
		echo "| Ativando nucleo do processador 1,2,3 respectivamente    |"
		echo 1 >>  /sys/devices/system/cpu/cpu1/online
		echo 1 >>  /sys/devices/system/cpu/cpu2/online
		echo 1 >>  /sys/devices/system/cpu/cpu3/online
		echo "| ======================================================= |"

		## wifi
		echo "| ======================================================= |"
		echo "| Ativando o wifi |"
		echo 1 >  /sys/class/rfkill/rfkill0/state
		echo "| ======================================================= |"

		## brilho
		echo "| ======================================================= |"
		echo "| Restaurando o brilho	|"
		# echo $brightness_med > /sys/class/backlight/intel_backlight/brightness
		echo $brightness_max > /sys/class/backlight/intel_backlight/brightness
		echo "| ======================================================= |"

		## bluetooth
		echo "| ======================================================= |"
		echo "| Mantendo o bluetooh desligado... hehehe	|"
		$bluetooh stop > /dev/null
		echo "| ======================================================= |"

		## contador	
		let chave--
	fi
}

f_notebook()
{
	## valor padrao
	chave=1

	otimiza=$(zenity --list \
		   --title="Otim. Bat. $versao - $modo" \
		   --text="O que deseja fazer? [Script $modo]"  \
		   --width "300" \
		   --height "200" \
		   --column "" --column="Marque" \
		   --radiolist \
	            TRUE Default \
	            FALSE Otimizar \
	) 

	f_verifica

	[[ $otimiza == "Default" ]] && f_desativa \
							    || f_ativa 
}

f_mensagem()
{
    dialog --msgbox "O script ira: \n-Desligar os nucleos do processador[1:2:3]; \n-Bluetooth + Wi-fi; \n-Reduzira o brilho! \n\n\n         TOME CUIDADO AO UTILIZA-LO!" 0 0
}

f_notebook_dialog()
{
	## valor padrao
	chave=1

	otimiza=$(dialog \
            --stdout --ok-label "Executar" --cancel-label "Cancelar" \
            --help-button --help-label "Ajuda" \
            --menu "Otimizar recursos? [$modo]" \
            0 0 0 \
            "LIG" "Ativar" \
            "DES" "Desativar" )

    f_verifica

    if [[ $otimiza == "HELP LIG" ]]; then
        f_mensagem
        echo $otimiza
    elif [[ $otimiza == "DES" ]]; then
        f_desativa
    elif [[ $otimiza == "LIG" ]]; then
        f_ativa
    else
        ## catch error
        exit 1
    fi
}

## funcao principal
main()
{
	# verifica se root
	[[ `id -u` -ne 0 ]] && \
    	zenity --info --text "Root e necessario" && exit 1    	

    while true; do    
	    ## verifica hostname = notebook, senao for sai!
		[[ ! $hostname -eq "notebook" ]] && echo "Entenda o script, antes de executa-lo!" && exit 1 \
										 || f_notebook_dialog		

		## se todos os modulos ativados - entao script "ON"
		[[ $chave == "2" ]] && modo="ON" || modo="OFF"
	done
}

## chamando script
main
