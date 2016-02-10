#!/bin/bash
clear
a=$(uname -m)
echo $a
clear
echo "Agora seria realizado o download do arquivo, de acordo com a sua arquitetura"
echo "------------------------------------------------------------------"
clear
if  [$a == 'x86_64']; then
		echo "Computador de 64 bits"
		echo "---------------------"
		echo "Realizando Download...."
		echo "---------------------"
		wget http://nbtelecom.dl.sourceforge.net/project/xampp/XAMPP%20Linux/5.6.14/xampp-linux-x64-5.6.14-0-installer.run -O xampp-installer.run
		echo "Realizando a instalação..."
		echo "---------------------"
		sudo ./xammp-installer.run
		echo "Espere..."
		echo "---------------------"
		echo "Iniciando XAMPP"
		echo "---------------------"
		sudo /opt/lampp/lampp start
		
	else
		echo "Computador de 32 bits"
		echo "---------------------"
		echo "Realizando Download..."
		echo "---------------------"
		wget http://nbtelecom.dl.sourceforge.net/project/xampp/XAMPP%20Linux/5.6.14/xampp-linux-5.6.14-0-installer.run -O xampp-installer.run 
		echo "Realizando a instalação..."
		echo "---------------------"
		sudo ./xammp-installer.run
		echo "Espere..."
		echo "---------------------"
		echo "Iniciando XAMPP"
		echo "---------------------"
		sudo /opt/lampp/lampp start
fi

