#
#fonte:www.hardware.com.br/comunidade/tplink-via/1360884/
#capturando informaçoes do roteador - IMPLEMENTAR
#echo "Configurações do Roteador"
#ifconfig | grep 'inet addr:' 

#verificando se o usuário é ROOT
if [[ `id -u` -ne 0 ]]; then
	echo
		echo "Você precisa ter poderes administrativos (root)"
		echo "O script está sendo finalizado ..."
		sleep 3
		exit
fi

#instalando curl - dependencia necessaria
sudo apt install curl* -y

#reiniciando roteador- FUNCIONANDO
#verifica se tem ping para reiniciar 
#if [[ $ping -eq 0]]; then
#curl --user admin:admin http://192.168.11.1/userRpm/SysRebootRpm.htm?Reboot=Reboot

#FUNCIONANDO
/usr/bin/curl --user admin:admin http://192.168.11.1/userRpm/SysRebootRpm.htm?Reboot=Reboot > /dev/null
clear
echo "Reiniciando o roteador, espere..."
sleep 60
echo "Roteador funcionando! Teste.."