#!bin/bash
########################################################################
# por carlosmorato
# fonte: <https://www.vivaolinux.com.br/topico/Shell-Script/Script-para-reiniciar-Roteador-Apos-pingar
#
# por bur
# fonte: <https://www.hardware.com.br/comunidade/tplink-via/1360884/>
#
# por Vivek Gite
# fonte: <https://www.cyberciti.biz/tips/simple-linux-and-unix-system-monitoring-with-ping-command-and-scripts.html>
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
# versão do script: 0.0.12.2.1.0 #
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
################################################################################
#
# Script testado em
#	-Xubuntu 16.04
#
# Compativel com roteadores
#	- TPLINK
#
################################################################################
#verificando se o usuário é ROOT
if [[ `id -u` -ne 0 ]]; then
	echo
		echo "Você precisa ter poderes administrativos (root)"
		echo "O script está sendo finalizado ..."
		sleep 3
		exit
fi

################################################################################
#instalando curl - dependencia necessaria
sudo apt install curl* -y
clear
################################################################################

#usuario digita o ip do roteador
echo "Digite o endereço do roteador:(x.x.x.x)"
read -p "?? " ip

#usuario digita o site que deseja testar
echo "Digite o site que deseja testar:(www.x.com)"
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
	#verificando se maquina esta conectada ao roteador
	if [ "$ip" == "Network is unreachable" ]; then
		echo "Conecte ao roteador"
	else                
            echo "Realizando testes de conexão"            
            teste=`ping -c4 google.com | grep 'received' | awk -F',' '{ print $2}' | awk '{ print $1}'`
            echo $teste
            echo "---------------------------------------------------------------"		
            #verificando
            if [ "$teste" == "0" ]; then
                    echo "Você está offline!"
                    echo "Reiniciando o roteador com ip $ip aguarde aproximadamente 1 minuto e meio para voltar a utilizar a Internet"
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
                    
            else
                #mostra mensagem
                echo "Você está online!"
                
                #aguarda 1 minuto para realizar o teste novamente
                sleep 60	
                
                #intervalo de quinze minutos
                #sleep 900
		fi	
	fi
done
################################################################################