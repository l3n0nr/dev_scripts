clear
#verificando se o usuário é ROOT
if [[ `id -u` -ne 0 ]]; then
	echo
		echo "Você precisa ter poderes administrativos (root)"
		echo "O script está sendo finalizado ..."
		sleep 3
		exit
fi
clear
echo "Olá, este script foi criado para otimização de recursos em notebook's"
echo "---------------------------------------------------------------------"
echo "Seu uso é recomendado para utilização, quando deseja-se uma maior duração na bateria na leitura ou produção de textos"
echo "Não é recomendado o uso, caso vá realizar tarefas complexas pois dessa forma ele irá prejudicar a duração da sua bateria"
echo "---------------------------------------------------------------------"
echo
echo "|---------------------------------------------------|"
echo "| Digite 1 para habilitar a otimização de recursos  |"
echo "| Digite 0 para desabilitar a otimização de recursos|"
echo "|---------------------------------------------------|"
read valor
clear
if [ "$valor" == "1" ]; then
	echo "Você acabou de ativar a otimização de recursos, realizando alterações..."
	sleep 3
	echo
	echo "| ======================================================= |"
	echo "| Desativando nucleo do processador 1,2,3 respectivamente |"
		echo 0 >> /sys/devices/system/cpu/cpu1/online
		echo 0 >> /sys/devices/system/cpu/cpu2/online
		echo 0 >> /sys/devices/system/cpu/cpu3/online
# 	echo "| Desativando Wi-fi	                                  |"
# 	echo "| ======================================================= |"
# 		echo 0 >  /sys/class/rfkill/rfkill0/state
	echo
	echo "A partir de agora, o seu computador irá consumir menos recursos e talvez a sua bateria irá durar mais.."
	echo "Caso mantenha o uso do notebook constante e com poucas tarefas rodando em paralelo."
	echo
else
	echo "Você acabou de desativar a otimização de recursos"
	sleep 3
	echo "| ======================================================= |"
	echo "| Ativando nucleo do processador 1,2,3 respectivamente    |"
		echo 1 >>  /sys/devices/system/cpu/cpu1/online
	  	echo 1 >>  /sys/devices/system/cpu/cpu2/online
	 	echo 1 >>  /sys/devices/system/cpu/cpu3/online
# 	echo "| Ligando Wi-fi                                           |"
# 	echo "| ======================================================= |"
# 		echo 1 > /sys/class/rfkill/rfkill0/state
	echo
fi
