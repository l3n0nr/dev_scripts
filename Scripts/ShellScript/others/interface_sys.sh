#!/bin/bash


# DESCRICAO DO SCRIPT:
# Otimiza recursos da maquina(notebook)
# 	- Desliga/Liga nucleos extras(1-2-3) # 0, nunca e desligado
# 	- Desliga/Liga Wifi
# 	- Reduz a 0/Aumenta a 100 o Brilho

f_verifica()
{
	[[ $? == "1" ]] && \
		zenity --notification \
			   --text "Script finalizado, antes do esperado!" && exit 1
}

f_cpu()
{
	if [[ $otimiza == "Ligar" ]]; then
		echo 1 >> /sys/devices/system/cpu/cpu1/online
		echo 1 >> /sys/devices/system/cpu/cpu2/online
		echo 1 >> /sys/devices/system/cpu/cpu3/online
	elif [[ $otimiza == "Desligar" ]]; then
		echo 0 >> /sys/devices/system/cpu/cpu1/online
		echo 0 >> /sys/devices/system/cpu/cpu2/online
		echo 0 >> /sys/devices/system/cpu/cpu3/online		
	else
		echo "Nao entendi!"
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
	            FALSE Desligar \
	            FALSE Ligar    
	)

	# f_cpu
	f_verifica
}

main()
{
	# f_interface
	f_notebook
}

main
