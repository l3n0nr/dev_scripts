#!/usr/bin/env bash
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
#
# # # # # # # # # # # #
#   DEVELOPMENT BY 	  #
# # # # # # # # # # # #
#
# por l3n0nr(Lenon Ricardo)
#       contato: <lenonrmsouza@gmail.com>
#
# # # # # # # # # # # # # # # # # # # # # # # ## # # #
# Date create script:    	  		[20/06/18]       #
# Last modification script: 		[08/10/20]       #
# # # # # # # # # # # # # # # # # # # # # # # ## # # #
#
# DESCRICAO DO SCRIPT:
# 	Otimiza recursos da maquina, para economizar bateria(notebook)
# 		- Desliga/Liga nucleos extras(1-2-3) 
# 			Nucleo 0 sempre ligado - CUIDADO, nunca desliga-lo - QUEBRA O SISTEMA!
# 		- Desliga/Liga Wifi
# 		- Reduz/Aumenta o brilho automaticamente
#
## variaveis do script
versao="0.70"

# nome da maquina
hostname=$(echo $HOSTNAME)

# configuracoes de brilho padrao
brightness_med="2000"
brightness_max="4000"

# arquivo do bluetooth
bluetooh="/etc/init.d/bluetooth"

# chave do script
chave=1

# status script
modo="OFF"

# ibam
time="$(ibam --bios | grep "Bios time left:"| awk {'print $4'})"
percent="$(ibam --percentbattery | grep "Battery percentage:"| awk {'print $3$4'})"

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
		echo "| Desativando nucleo do processador 2,3 respectivamente |"
		echo 0 >> /sys/devices/system/cpu/cpu2/online
		echo 0 >> /sys/devices/system/cpu/cpu3/online  
		cpufreq-set -g conservative
		echo "| ======================================================= |"		

		## wifi
		echo "| ======================================================= |"
		echo "| Desativando o wifi |"
		echo 0 >  /sys/class/rfkill/rfkill0/state
		echo "| ======================================================= |"

		## brilho
		echo "| ======================================================= |"
		echo "| Otimizando o brilho  |"
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
		echo "| Ativando nucleo do processador 2,3 respectivamente    	|"
		echo 1 >>  /sys/devices/system/cpu/cpu2/online
		echo 1 >>  /sys/devices/system/cpu/cpu3/online
		cpufreq-set -g ondemand
		echo "| ======================================================= |"

		## wifi
		echo "| ======================================================= |"
		echo "| Ativando o wifi |"
		echo 1 >  /sys/class/rfkill/rfkill0/state
		echo "| ======================================================= |"

		## brilho
		echo "| ======================================================= |"
		echo "| Restaurando o brilho	|"
		echo $brightness_max > /sys/class/backlight/intel_backlight/brightness
		echo "| ======================================================= |"

		## bluetooth
		echo "| ======================================================= |"
		echo "| Mantendo o bluetooh desligado		|"
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

f_dialog_box()
{
	if [[ $? == "1" ]]; then
		exit 0
	else
		while [[ TRUE ]]; do
			dialog \
        	--yes-label "Voltar" --no-label "SAIR" \
        	--yesno "$time/$percent" 0 0

        	if [[ $? == "0" ]]; then
        		f_notebook_dialog
        	else
        		exit 1
        	fi
		done		
	fi	
}

f_notebook_dialog()
{
	chave=1

	otimiza=$(dialog \
            --stdout --ok-label "Executar" --cancel-label "SAIR" \
            --menu "Otimizar recursos?" 0 0 0 \
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
        # f_dialog_box
        # exit 1
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
