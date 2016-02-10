
#!/bin/bash
clear
echo "Testando a conexão com a Internet"
echo "------------------------"
sleep 3
clear
echo "Pingando..."
echo "------------------------"
if ! ping -c 10 www.duckduckgo.com ; then
	echo "Internet NÃO está Ok!"
	echo "------------------------"
	echo "É necessário você reiniciar o seu roteador"
	#firefox http://192.168.1.1/userRpm/SysRebootRpm.htm
	#firefox http://192.168.1.1/userRpm/DateTimeCfgRpm.htm
	#time 60 echo "Reiniciando Roteador.."
	#echo "------------------------"
else
	echo "Internet OK!"
	echo "------------------------"
fi
exit
