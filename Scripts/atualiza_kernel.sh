#autor: ???
#fonte: <http://www.diolinux.com.br/2015/04/como-atualizar-kernel-para-a-ultima-versao-no-ubuntu.html>

#!/bin/bash

############################################################################################################


if [[ $EUID -ne 0 ]]; then
   echo "Você deve executar este script como root" 1>&2
   exit 1
fi

distribid=$(cat /etc/lsb-release | grep DISTRIB_ID)
if [[ "$distribid" != "DISTRIB_ID=Ubuntu" ]]; then
	echo "Este script irá atualizar o Kernel do seu sistema"
	exit 1
fi

removeclean()
{
	#limpeza
	dpkg -l 'linux-*' | sed '/^ii/!d;/'"$(uname -r | sed "s/\(.*\)-\([^0-9]\+\)/\1/")"'/d;s/^[^ ]* [^ ]* \([^ ]*\).*/\1/;/[0-9]/!d' | xargs -p sudo apt-get -y purge
}

selectiveclean()
{
	echo "em desenvolvimento"
}

selectiveupgrade()
{
	echo "em desenvolvimento"
}

updatelatest()
{
	#Baixa a lista de kernel e atributos
	list=$(lynx --dump http://kernel.ubuntu.com/~kernel-ppa/mainline/ | awk '/http/{print $2}')
	AddressLastVersion=$( echo "${list}"  | grep -v rc | tail -n 1)
	LastKernelAvaliable=$(echo $AddressLastVersion | cut -d "/" -f 6 | cut -d "-" -f1 | tr -d v )
	if [ -z $(echo $LastKernelAvaliable | cut -d "." -f3) ]  ; then LastKernelAvaliable=${LastKernelAvaliable}.0; fi  

	#kernel instalado
	LastKernelInstalled=$(ls /boot/ | grep img | cut -d "-" -f2 | sort -V | cut -d "." -f1,2,3 | tail -n 1)

	#tipo do processador
	arch=`uname -m`
	if  [ $arch = i686 ] || [ $arch = i386 ]; then 
		myarch="i386" 
	elif [ $arch = "x86_64" ]; then
		myarch="amd64"
	else 
		echo "Não foram encontrados pacotes para o seu processador :("
		exit 0
	fi

	#comparação
	if [ $LastKernelInstalled = $LastKernelAvaliable ]; then
		echo
		echo
		echo "Seu Kernel" $LastKernelInstalled  "e' a versão mais recente disponível."
		echo "Até mais! :)"
		echo
		echo
		exit 0
	else
		echo
		echo "Seu Kernel e' o" $LastKernelInstalled "está disponível" $LastKernelAvaliable
		echo
		read -p "Quer atualizar? [s]/n" -n 1 -s atualizar
		if [[ "$atualizar" != "n" ]];then
	        #continua a atualização
			echo
			echo "Baixando o novo Kernel"
	        DownloadFolder=/tmp/kernel_$LastKernelAvaliable; mkdir -p $DownloadFolder; cd $DownloadFolder
	        wget $(lynx -dump -listonly $AddressLastVersion | awk '/http/{print $2}' | egrep 'all.deb|generic(.){1,}'$myarch'.deb')
	        echo
	        echo "...e vamos instalar"
	        echo
	        sudo dpkg -i *.deb
	        echo
	        echo "Para usar o novo Kernel vocẽ deve reiniciar o computador"
	        echo
	        echo "Eu posso desinstalar o Kernel antigo se você quiser, mas antes seria interessante reiniciar para ver se "$LastKernelAvaliable" está funcionando corretamente."
	        echo
	        read -p "Quer que eu apague o Kernel antigo? s/[n]" -n 1 -s limpar
	        if [[ "$limpar" != "s" ]];then
	        	echo
	        	echo "ok, está feito."
	        	echo "Até mais!"
	        	echo
	        	exit 0
	        else
	        	removeclean
	        	exit 0
	        fi
		else
			#não escolheu o upgrade
			echo
			echo "Você escolheu não atualizar."
			echo "Até mais"
			exit 0
		fi
	fi
}

if [[ "$1" = "--help" || "$1" = "-h" ]]; then
	echo
	echo "Acesse www.diolinux.com.br"
	exit 1
fi

if [[ "$1" = "--upd" || "$1" = "-u" ]]; then
	echo
	echo "Kernel-update:você optou por atualizar."
	updatelatest
	exit 0
fi

if [[ "$1" = "--rem" || "$1" = "-r" ]]; then
	echo
	echo "Kernel-update: você optou por excluir o kernel antigo"
	removeclean
	exit 0
fi

while :
do
	clear
	echo
	echo "Este script permite que você controle o seu kernel
	Atualizando, limpando e fazendo outras operações"
	echo
	echo "a) Kernel Updates"
	echo "b) Excluir Kernel antigo"
	echo "q) Sair"
	echo
	read -n 1 -p 'O que você quer fazer?' -s x
	case $x in
		a )	echo
			updatelatest
			;;
		b )	echo
			removeclean
			;;
		q )	echo
			clear
		  	echo "Ok, tchau!"
		  	echo
			exit 0
			;;
		* )
			echo
			echo "Comando não valido "\"$x\"
			;;
	esac 
done
