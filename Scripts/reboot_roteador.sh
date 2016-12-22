########################################################################
# por carlosmorato
# fonte: <https://www.vivaolinux.com.br/topico/Shell-Script/Script-para-reiniciar-Roteador-Apos-pingar
#
# por bur
# fonte: <https://www.hardware.com.br/comunidade/tplink-via/1360884/>
#
###################
#DESENVOLVIDO POR
###################
#
# por lenonr(Lenon Ricardo) -
# contato: <lenonrmsouza@gmail.com>
#
#################################################################################
#										#
#	If I have seen further it is by standing on the shoulders of Giants.	#
#	(Se vi mais longe foi por estar de pé sobre ombros de gigantes)		#
#							~Isaac Newton		#
#										#
#################################################################################
#
##################################
# versão do script: 0.0.10.2.1.0 #
##################################
#
# legenda: a.b.c.d.e.f
# 	a = alpha[0], beta[1];
# 	b = erros na execução;	
# 	c = interações com o script + versões funcionando;
# 	d = correções necessárias;
#       	Está caindo apenas no else a funcao de verificar ping
# 	e = pendencias
# 	f = desenvolver
# 		Gerar relatorio antes de desligar, como horário, data, log
#
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
#usuario digita o ip do roteador
echo "Digite o endereço do roteador"
read -p "?? " ip

#usuario digita o site que deseja testar
echo "Digite o site que deseja testar"
read -p "?? " site
clear

#mostrando informacoes
echo "---------------------------------"
echo "Ip do roteador: " $ip
echo "---------------------------------"
echo "Site para o teste: " $site
echo "---------------------------------"

#verificação infinita
while true 
do
	#intervalo de trinta minutos
	#sleep 1800
		
	#verificando se maquina esta conectada ao roteador
	if [ "$ip" == "Network is unreachable" ]; then
		echo "Conecte ao roteador"
	else
		echo "Realizando testes de conexão"
		echo "Teste 1"
		teste1=$( ping $site )
		teste1=$( ping -c1 $site | grep From | awk -F' ' '{ print $4 $5 $6}' )
		echo $teste1
		echo "---------------------------------------------------------------"
		
		echo "Teste 2"
		teste2=$( ping $site )
		echo $teste2
		echo "---------------------------------------------------------------"
		
		#resposta esperada
		if [ "$internet" == "DestinationPortUnreachable" ]; then
			echo "Você está offline!"
			echo "Reiniciando o roteador, aguarde aproximadamente 1 minuto e meio para voltar a utilizar a Internet"
			curl --user admin:admin http://$ip/userRpm/SysRebootRpm.htm?Reboot=Reboot
			
			#funcao alternativa
			#/usr/bin/curl --user admin:admin http://192.168.11.1/userRpm/SysRebootRpm.htm?Reboot=Reboot > /dev/null
			
			echo "Reiniciando o roteador, espere..."
			sleep 60
			
			echo "Roteador reiniciado! Teste em um site.."
			sleep 10

			#caso o valor seja igual a dez
			if [ "$cont" == "10" ]; then
				#desligando a maquina
				#poweroff
				
				#contador de erros
				cont=$((cont+1))
				
				#mostrando contador
				echo $cont
			fi
			
			elif [ "$internet1" == "unknown host" ]; then
				echo "teste"
			else
				echo "Você está online!"
				#sleep 1				
		fi	
	fi
done
########################################################################