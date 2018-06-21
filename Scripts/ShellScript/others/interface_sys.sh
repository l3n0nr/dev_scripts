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
# Last modification script: 		[21/06/18]       #
# # # # # # # # # # # # # # # # # # # # # # # ## # # #


# DESCRICAO DO SCRIPT:
# Otimiza recursos da maquina, para economizar bateria(notebook)
# 	- Desliga/Liga nucleos extras(1-2-3) # Nucleo 0 nunca e desligado
# 	- Desliga/Liga Wifi
# 	- Reduz/Aumenta o brilho

## variaveis do script
	# nome da maquina
	hostname=$(echo $HOSTNAME)

	# configuracoes de brilho padrao
	brightness_min="1000"
	brightness_med="2441"

	# arquivo do bluetooth
	bluetooh="/etc/init.d/bluetooth"

	# chave do script
	chave=1

	# status script
	modo="Desativado"

## funcao de verificacao
f_verifica()
{
	[[ $? == "1" ]] && exit 1
}

f_ativa()
{
	if [[ $modo == "Desativado" ]]; then		
		## processador
		echo "| ======================================================= |"
		echo "| Desativando nucleo do processador 1,2,3 respectivamente |"
		echo 0 >> /sys/devices/system/cpu/cpu1/online
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
		echo "| Reduzindo o brilho  |"
		echo $brightness_min > /sys/class/backlight/intel_backlight/brightness		
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
	if [[ $modo == "Ativado" ]]; then		
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
		echo "| Aumentando o brilho	|"
		echo $brightness_med > /sys/class/backlight/intel_backlight/brightness
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
		   --title="Bateria" \
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

## funcao principal
main()
{
	# verifica se root
	[[ `id -u` -ne 0 ]] && \
    	zenity --info --text "Root e necessario" && exit 1    	

    while true; do    
	    ## verifica hostname = notebook, senao for sai!
		[[ ! $hostname -eq "notebook" ]] && echo "Nao serve!" && exit 1 \
										 || f_notebook		

		## se todos os modulos ativados - entao script "ON"
		[[ $chave == "2" ]] && modo="Ativado" || modo="Desativado"
	done
}

## chamando script
main
