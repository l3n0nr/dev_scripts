########################################################################
# por carlosmorato
# fonte: <https://www.vivaolinux.com.br/topico/Shell-Script/Script-para-reiniciar-Roteador-Apos-pingar
#
# por bur
# fonte: <www.hardware.com.br/comunidade/tplink-via/1360884/>
#
###################
#DESENVOLVIDO POR
###################
#
#por lenonr(Lenon Ricardo) -
#	contato: <github.com/lenonr/dev_scripts>
#
#################################################################################
#										#
#	If I have seen further it is by standing on the shoulders of Giants.	#
#	(Se vi mais longe foi por estar de pé sobre ombros de gigantes)		#
#							~Isaac Newton		#
#										#
#################################################################################
#
###########################
#versão do script: 0.4.1.2
###########################
#
#legenda: a.b.c.d
# a = alpha[0], beta[1];
# b = versões funcionando;
# c = correções necessárias;
#	Não está funcionando, a funcao de reiniciar o roteador
# d = pendencias a serem implementadas
#	Gerar relatorio antes de desligar, como horário, data, log
#  	Possibilitar ao usuario, passar o ip do roteador

########################################################################
#verificando se o usuário é ROOT
if [[ `id -u` -ne 0 ]]; then
	echo
		echo "Você precisa ter poderes administrativos (root)"
		echo "O script está sendo finalizado ..."
		sleep 3
		exit
fi

########################################################################
#instalando curl - dependencia necessaria
sudo apt install curl* -y
clear
########################################################################

########################################################################
while true
do 
    #echo "Digite o endereço do seu roteador"
    #read -p ip
	clear

	#intervalo de trinta minutos
	#sleep 1800
	
	echo "Realizando teste"
	internet=$(ping -c1 google.com.br | grep From | awk -F' ' '{ print $4 $5 $6}')

	#sleep 300
	#resposta esperada
	if [ "$internet" == "DestinationPortUnreachable" ]; then
		echo "Offline!"
		echo "Reiniciando o roteador, aguarde aproximadamente 1 minuto e meio para voltar a utilizar a Internet"
		curl --user admin:admin http://192.168.11.1/userRpm/SysRebootRpm.htm?Reboot=Reboot
		#funcao alternativa
		#/usr/bin/curl --user admin:admin http://192.168.11.1/userRpm/SysRebootRpm.htm?Reboot=Reboot > /dev/null
		echo "Reiniciando o roteador, espere..."
		sleep 60
		echo "Roteador funcionando! Teste.."
		sleep 10
	
		#caso o valor seja igual a dez
		if [ "$cont" == "10" ]; then
			#poweroff
			
			#contador de erros
			cont=$((cont+1))
		fi
	else
		echo "Online!" 	
		sleep 1		
	fi
done
########################################################################