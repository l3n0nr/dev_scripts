#!/bin/bash


# DESCRICAO DO SCRIPT:
# Otimiza recursos da maquina, para economizar bateria(notebook)
# 	- Desliga/Liga nucleos extras(1-2-3) # Nucleo 0 nunca e desligado
# 	- Desliga/Liga Wifi
# 	- Reduz/Aumenta o brilho

## variaveis do script
hostname=$(echo $HOSTNAME)

## funcao de verificacao
f_verifica()
{
	[[ $? == "1" ]] && \
		zenity --notification \
			   --text "Script finalizado, antes do esperado!" && exit 1
}

## funcao nucleos
f_cpu()
{
	if [[ $otimiza == "Otimizar" ]]; then
		echo "| ======================================================= |"
		echo "| Desativando nucleo do processador 1,2,3 respectivamente |"
		echo 0 >> /sys/devices/system/cpu/cpu1/online
		echo 0 >> /sys/devices/system/cpu/cpu2/online
		echo 0 >> /sys/devices/system/cpu/cpu3/online       
		echo "| ======================================================= |"
	elif [[ $otimiza == "Default" ]]; then
		echo "| ======================================================= |"
		echo "| Ativando nucleo do processador 1,2,3 respectivamente    |"
		echo 1 >>  /sys/devices/system/cpu/cpu1/online
	  	echo 1 >>  /sys/devices/system/cpu/cpu2/online
	 	echo 1 >>  /sys/devices/system/cpu/cpu3/online
	 	echo "| ======================================================= |"
	else
		echo "Nao entendi, CPU!"
	fi
}

## funcao wifi
f_wifi()
{
	if [[ $otimiza == "Otimizar" ]]; then
		echo "| ======================================================= |"
		echo "| Desativando o wifi |"
		echo 0 >  /sys/class/rfkill/rfkill0/state
		echo "| ======================================================= |"
	elif [[ $otimiza == "Default" ]]; then
		echo "| ======================================================= |"
		echo "| Ativando o wifi |"
		echo 1 >  /sys/class/rfkill/rfkill0/state
		echo "| ======================================================= |"
	else
		echo "Nao entendi, WIFI!"
	fi
}

f_brightness()
{
	## values default - not change!
	brightness_min="500"
	brightness_med="2441"
	brightness_max="4882"

	if [[ $otimiza == "Otimizar" ]]; then
		echo "| ======================================================= |"
		echo "| Reduzindo o brilho  |"
		echo $brightness_min > /sys/class/backlight/intel_backlight/brightness
		echo "| ======================================================= |"
	elif [[ $otimiza == "Default" ]]; then
		echo "| ======================================================= |"
		echo "| Aumentando o brilho	|"
		echo $brightness_med > /sys/class/backlight/intel_backlight/brightness
		echo "| ======================================================= |"
	else
		echo "Nao entendi, BRILHO"
	fi
}

f_notebook()
{
	otimiza=$(zenity --list \
		   --title="Otimizar Bateria" \
		   --text="O que deseja fazer?"  \
		   --width "300" \
		   --height "200" \
		   --column "" --column="Marque" \
		   --radiolist \
	            FALSE Default \
	            FALSE Otimizar    
	) 

	f_cpu	
	f_wifi
	f_brightness
}

## funcao principal
main()
{
	# verifica se root
	[[ `id -u` -ne 0 ]] && \
    	zenity --info --text "Root e necessario" && \
    	exit 1    	

    ## verifica se e notebook
	[[ ! $hostname -eq "notebook" ]] && echo "Nao serve!" && exit 1 \
									 || f_notebook
}

## chamando script
main
