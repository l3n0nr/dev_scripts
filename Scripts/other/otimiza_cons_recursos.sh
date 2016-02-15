clear
#echo
#echo "Digite a sua de administrador, para dar inicio ao script"
#echo "---------------------------------------------------------------------"
#su -
echo
echo "Ele deve ser executado em modo administrador"
sleep 5
clear
echo "Olá, este script foi criado para otimização de recursos em computadores"
echo "NÃO É RECOMENTADO O SEU USO CASO ESTEJA REALIZANDO TAREFAS COMPLEXAS!"
echo
echo "Você realmente dessa testá-lo? (s ou n)"
echo "|---------------------------------------------------|"
echo "| Digite s para habilitar a otimização de recursos  |"
echo "| Digite n para desabilitar a otimização de recursos|"
echo "|---------------------------------------------------|"
read valor
clear
if [ "$valor" == "s" ]; then
	echo "Você acabou de ativar a otimização de recursos, realizando alterações..."
	sleep 3
	echo
	echo "| ======================================================= |"
	echo "| Desativando nucleo do processador 1,2,3 respectivamente |"
		echo 0 >> /sys/devices/system/cpu/cpu1/online
		echo 0 >> /sys/devices/system/cpu/cpu2/online
		echo 0 >> /sys/devices/system/cpu/cpu3/online
	echo "| Desativando Wi-fi	                                  |"
	echo "| ======================================================= |"
		echo 0 >  /sys/class/rfkill/rfkill0/state
	echo
	echo "A partir de agora, o seu computador irá consumir menos recursos.."
	#echo "Caso mantenha o uso do notebook constante e com poucas tarefas rodando em paralelo."
	echo
else
	echo "Você acabou de desativar a otimização de recursos"
	sleep 3
	echo "| ======================================================= |"
	echo "| Ativando nucleo do processador 1,2,3 respectivamente    |"
		echo 1 >>  /sys/devices/system/cpu/cpu1/online
	  echo 1 >>  /sys/devices/system/cpu/cpu2/online
	  echo 1 >>  /sys/devices/system/cpu/cpu3/online
	echo "| Ligando Wi-fi                                           |"
	echo "| ======================================================= |"
		echo 1 > /sys/class/rfkill/rfkill0/state
	echo
fi
