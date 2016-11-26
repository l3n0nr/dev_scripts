#!/bin/bash
################################################################################
#
###################
#FONTES DE PESQUISA
###################
#
#por oliveiradeflavio(Flávio Oliveira)
#	contato: <github.com/oliveiradeflavio/scripts-linux>
#
#por gmanson(Gabriel Manson)
#	contato: <github.com/gmasson/welcome-debian>
################################################################################
#
################################################################################
#
#############
#DESENVOLVIDO
#############
#
#por lenonr(Lenon Ricardo) - 
#	contato: <github.com/lenonr/dev_scripts>
#
################################################################################
#
#############################
#versão do script: Alpha 0.17
#############################
#
##################Alpha: 0.*#
##################Beta: 1.* #
#
################################################################################

#Script utilizado para automatizar a instalação de programas, após a formatação do Sistema Operacional
#	-Xubuntu 16.04

#FUNCOES 	
#Correções
#	[+]Update
#	[+]Upgrade
#	[+]CorrigindoErros(especificar melhorar)
#		[+]Swap
#		[-]Prelink
#		[-]Preload
#		[-]Deborphan
#Instalação	
#	[+]Firefox
#	[+]Steam
#	[+]Xampp
#	[+]Spofity
#	[+]Icones/Temas Mac
#	[+]Codec's
#	[+]Gimp
#	[+]XFCE
#	[+]Java 8
#	[+]Redshift
#	[+]Flux
#	[+]NodeJS
#	[+]Atom
#	[-]Ppa's	
#	[-]Xfce
#	[-]Libreoffice
#	[-]Vlc
#	[-]Gparted
#	[-]Tlp
#	[-]Rar
#	[-]Git
#	[-]Lm-sensors
#	[-]Stellarium
#	[-]Texmaker
#	[-]Gnome-terminal
#	[-]Clementine
#
#Limpeza
#	
#
#Reinicialização
#	[+]Reinicia

#ESTRUTURAR/DESENVOLVER/APRIMORAR
#	-Identificar qual a distribuição e dessa forma realizar a instalação dos programas especificos para ela.
#	-Possibilitar ao usuário o cancelamento dos programas selecionados para instalação, dentro de um tempo pré-determinado(10 seg.)
	
################################################################################

#verificando se o usuário é ROOT
if [[ `id -u` -ne 0 ]]; then
	echo
		echo "Você precisa ter poderes administrativos (root)"
		echo "O script está sendo finalizado ..."
		sleep 3
		exit
fi

######VERIFICANDO QUAIS PROGRAMAS O USUARIO DESEJA QUE SEJAM INSTALADOS
firefox() 
{
	clear
	echo ""
	echo "Deseja instalar o firefox? (s/n)"
	read -p "?? " firefox;
}

steam()
{
	clear
	echo ""
	echo "Deseja instalar o steam? (s/n)"
	read -p "?? " steam;
}

xampp()
{
	clear
	echo ""
	echo "Deseja instalar o xampp? (s/n)"
	read -p "?? " xampp;
}

spotify()
{
	clear
	echo ""
	echo "Deseja instalar o spotify? (s/n)"
	read -p "??" spotify;
}

mac()
{
	clear
	echo ""
	echo "Deseja instalar o tema e ícones do MAC OS X? (s/n)"
	read -p "??" mac;
}

codecs()
{
	clear
	echo ""
	echo "Deseja instalar codecs multimidia em seu sistema (s/n)?"
	read -p "??" codecs;
}

gimp()
{
	clear
	echo ""
	echo "Deseja instalar o Gimp em seu sistema (s/n)?"
	read -p "??" gimp;
}

xfce()
{
	clear
	echo ""
	echo "Deseja instalar componentes adicionais do XFCE em sua máquina (s/n)?"
	read -p "??" xfce;
}

wine()
{
	clear
	echo ""
	echo "Deseja instalar o wine (s/n)?"
	read -p "??" wine;
}

playonlinux()
{
	clear
	echo ""
	echo "Deseja instalar o playonlinux (s/n)?"
	read -p "??" playonlinux;
}

java()
{
	clear
	echo ""
	echo "Deseja instalar o Java 8 (s/n)?"
	read -p "??" java;
}

redshift()
{
	clear
	echo ""
	echo "Deseja instalar o Red Shift (s/n)?"
	read -p "??" redshift;
}

flux()
{
	clear
	echo ""
	echo "Deseja instalar o Flux (s/n)?"
	read -p "??" flux;
}

nodejs()
{
	clear
	echo ""
	echo "Deseja instalar o NodeJS (s/n)?"
	read -p "??" nodejs;
}

atom()
{
	clear
	echo ""
	echo "Deseja instalar o Atom (s/n)?"
	read -p "??" atom;
}

update()
{
	clear
	echo ""
	echo "Deseja atualizar os repositórios de sua máquina (s/n)?"
	read -p "??" update;
}

upgrade()
{
	clear
	echo ""
	echo "Deseja atualizar os programas de sua máquina (s/n)?"
	read -p "??" upgrade;
}

corrigeerros()
{
	clear
	echo ""
	echo "Deseja corrigir possíveis erros em sua distribuição? (s/n)"
	read -p "??" corrigeerros;
}

swap()
{
	clear
	echo ""
	echo "Deseja otimizar a utilização da swap?"
	read -p "??" swap;
}

reinicia()
{
	clear
	echo ""
	echo "Deseja reiniciar a máquina agora, para concluir a instalação? (s/n)"
	read -p "??" reinicia;
}

####RESCREVER - INICIO
#funcao para atualizar o sistema


add_ppa()
{
	clear
	echo "Adicionando PPA's"
	echo "----------------------------------------------------------------------"
	if [ -e "$DIR libreoffice-ppa-trusty.list" ]; then
		echo "Sistema já contém o PPA LIBREOFFICE"
		sleep 1
	else
		add-apt-repository ppa:libreoffice/ppa -y
	fi

	if [ -e "$DIR webupd8team-java-trusty.list" ]; then
		echo "Sistema já contém o PPA JAVA (WEB/JDK)"
		sleep 1
	else
		add-apt-repository ppa:webupd8team/java -y
	fi

	if [ -e "$DIR ubuntu-wine-ppa-trusty.list" ]; then
		echo "Sistema já contém o PPA WINE"
		sleep 1
	else
		add-apt-repository ppa:ubuntu-wine/ppa -y
	fi
}

programs_essencials()
{
	clear
	echo "Instalando Programas..."
	echo "----------------------------------------------------------------------"
	#programas essenciais
		sudo apt-get install libreoffice vlc gparted tlp rar -y --force-yes
			
}


programs_others()
{	
	#outros programas
		sudo apt-get install git lm-sensors stellarium texmaker gnome-terminal clementine -y --force-yes 
}
	
programs_prelink_preload_deborphan()
{
	clear
	echo
	echo "Instalando Prelink, Preload e Deborphan"
	#prelink =
	#preload =
	#deborphan = remove pacotes obsoletos do sistema, principalmente após as atualizações de programas
	echo "-------------------"
	sudo apt install prelink preload -y 1>/dev/null 2>/dev/stdout
	sudo apt-get install deborphan -y

	echo "Configurando Deborphan..."
	sudo deborphan | xargs sudo apt-get -y remove --purge &&
	sudo deborphan --guess-data | xargs sudo apt-get -y remove --purge

	echo ""
	echo "Configurando Prelink e Preload..."
	echo "-------------------"
	memfree=$(grep "memfree = 50" /etc/preload.conf)
	memcached=$(grep "memcached = 0" /etc/preload.conf)
	processes=$(grep "processes = 30" /etc/preload.conf)
	prelink=$(grep "PRELINKING=unknown" /etc/default/prelink)

	if which -a prelink 1>/dev/null 2>/dev/stdout && which -a preload 1>/dev/null 2>/dev/stdout; then
	echo
	echo "Configurando o PRELOAD"
	if [[ $memfree == "memfree = 90" ]];then
		echo "configurando..."
		sed -i 's/memfree = 50/memfree = 90/g' /etc/preload.conf

		elif [[ $memcached == "memcached = 35" ]]; then
			echo "configurando..."
			sed -i 's/memcached = 0/memcached = 35/g' /etc/preload.conf

		elif [[ $processes == "processes = 50" ]]; then
			echo "configurando..."
			sed -i 's/processes = 30/processes = 50/g' /etc/preload.conf

	else
		echo "Não há nada para ser configurado"
		echo "Isso porque já foi configurado anteriomente"
		fi

		echo "Ativando o PRELINK"
		if [[ $prelink == "PRELINKING=unknown" ]]; then
			echo "adicionando ..."
			sed -i 's/unknown/yes/g' /etc/default/prelink

		else
			echo "Otimização já adicionada anteriormente."
		fi
	fi
}


cleaning_ubuntu()
{
	clear
	echo "Realizando a limpeza no sistema"
	echo "----------------------------------------------------------------------"
	clear
	if which -a prelink && which -a deborphan; then
		clear
		echo "Esvaziando a Lixeira"
		rm -rf /home/$SUDO_USER/.local/share/Trash/files/*
		echo "--------------------------------------------"
		echo "Esvaziando os Arquivos Temporários (pasta tmp)"
		rm -rf /var/tmp/*
		echo "--------------------------------------------"
		echo "Excluindo Arquivos Inúteis do Cache do Gerenciador de Pacotes (apt)"
		apt-get clean -y
		echo "--------------------------------------------"
		echo "Excluindo Pacotes Velhos que não tem utilidade para o Sistema"
		apt-get autoremove -y
		echo "--------------------------------------------"
		echo "Excluindo Pacotes Duplicados"
		apt-get autoclean -y
		echo "--------------------------------------------"
		echo "Reparando Pacotes com Problemas"
		dpkg --configure -a
		echo "--------------------------------------------"
		echo "Removendo Pacotes Órfãos"
		apt-get remove $(deborphan) -y ; apt-get autoremove -y
		echo "--------------------------------------------"
		echo "Removendo Arquivos (.bak, ~, .tmp) da pasta Home"
		for i in *~ *.bak *.tmp; do
			find $HOME -iname "$i" -exec rm -f {} \;
	done
	
	echo "--------------------------------------------"
	echo "Otimizando as Bibliotecas dos Programas"
	/etc/cron.daily/prelink
	echo "--------------------------------------------"
	clear
	echo "Limpeza Concluída ... "
	sleep 3
	else
		clear
		echo -e "Você precisa instalar dois programas\n para continuar com a Limpeza."
		read -p "Deseja instalar o Prelink e o Deborphan? s/n: " -n1 escolha
		case $escolha in
			s|S) echo
				apt-get install prelink deborphan -y ;
				sed -i 's/unknown/yes/g' /etc/default/prelink
				;;
			n|N) echo
				echo Saindo, não executando a limpeza...
				sleep 1
				exit
				;;
			*) echo
				echo Alternativas incorretas ... Saindo!!!
				sleep 1
				exit
				;;
		esac

	fi
}

####RESCREVER - FIM
install_yes()
{
	clear
	#relatorio de instalacao
	echo "As seguintes tarefas serão realizadas..."
	echo "----------------------------------------------"
	
	#instalando o firefox
	if [[ $firefox == "s" ]]; then		
		clear
  		echo "Firefox, "
  		sudo apt install firefox -y
	fi
	
	#instalando o steam
	if [[ $steam == "s" ]]; then	
		clear
	 	echo "Steam"
 		sudo apt-get install steam -y
	fi
	
	#instalando o xampp
	if [[ $xampp == "s" ]]; then	
		clear
	 	echo "Xampp, (Ele irá precisar da sua atenção)"
		#verificar se existe o diretorio "/opt/lampp/" habilitado na maquina, senao realizar o 	processo
		echo "Instalando XAMPP em sua máquina"
		echo "----------------------------------------------------------------------"
		wget http://nbtelecom.dl.sourceforge.net/project/xampp/XAMPP%20Linux/5.6.14/xampp-linux-x64-5.6.14-0-installer.run -O xampp-installer.run
		echo "Realizando a instalação..."
		echo "---------------------"
		chmod +x xampp-installer.run
		sudo ./xampp-installer.run
		echo "Espere..."
		echo "---------------------"
		echo "Iniciando XAMPP"
		echo "---------------------"
		sudo /opt/lampp/lampp start
		rm xampp-installer.run
	fi
	
	#instalando o spotify
	if [[ $spotify == "s" ]]; then
		clear
		echo "Instalando Spotify"
		echo "----------------------------------------------------------------------"
		sudo sh -c "echo 'deb http://repository.spotify.com stable non-free' >> /etc/apt/sources.list"
	     	sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2C19886
		sudo apt-get update
		sudo apt-get install spotify-client
	fi	
	
	#instalando icones e temas do MAC OS X
	if [[ $mac == "s" ]]; then
		clear
		echo "Instalando icones e temas do MacOS X"
		sudo add-apt-repository ppa:noobslab/macbuntu -y
		sudo apt-get update
		sudo apt-get install macbuntu-os-icons-lts-v7 -y		
		sudo apt-get install macbuntu-os-ithemes-lts-v7 -y
	fi
	
	#instalando pacotes multimidias
	if [[ $codecs == "s" ]]; then	
		clear
		echo "Instalando Pacotes Multimidias (Codecs)"
		echo "----------------------------------------------------------------------"
		sudo apt install ubuntu-restricted-extras faac faad ffmpeg gstreamer0.10-ffmpeg flac icedax id3v2 lame libflac++6 libjpeg-progs libmpeg3-1 mencoder mjpegtools mp3gain mpeg2dec mpeg3-utils mpegdemux mpg123 mpg321 regionset sox uudeview vorbis-tools x264 arj p7zip p7zip-full p7zip-rar rar unrar unace-nonfree sharutils uudeview mpack cabextract libdvdread4 libav-tools libavcodec-extra-54 libavformat-extra-54 easytag gnome-icon-theme-full gxine id3tool libmozjs185-1.0 libopusfile0 libxine1 libxine1-bin libxine1-ffmpeg libxine1-misc-plugins libxine1-plugins libxine1-x nautilus-script-audio-convert nautilus-scripts-manager tagtool spotify-client prelink deborphan oracle-java7-installer -y --force-yes
	fi
	
	#instalando o gimp
	if [[ $gimp == "s" ]]; then
		clear
		echo "Instalando o Gimp"
		echo "----------------------------------------------------------------------"
		sudo apt-get install gimp* -y
	fi
	
	#instalando os componentes do xfce
	if [[ $xfce == "s" ]]; then
		clear
		echo "Instalando Adicionais do XFCE4"
		echo "----------------------------------------------------------------------"
		sudo apt-get install xfce4-battery-plugin xfce4-clipman-plugin xfce4-cpufreq-plugin xfce4-cpugraph-plugin xfce4-datetime-plugin xfce4-diskperf-plugin xfce4-eyes-plugin xfce4-fsguard-plugin xfce4-genmon-plugin xfce4-indicator-plugin xfce4-linelight-plugin xfce4-mailwatch-plugin xfce4-mpc-plugin xfce4-notes-plugin xfce4-places-plugin xfce4-netload-plugin xfce4-quicklauncher-plugin xfce4-radio-plugin xfce4-screenshooter-plugin xfce4-sensors-plugin xfce4-smartbookmark-plugin xfce4-systemload-plugin xfce4-timer-plugin xfce4-time-out-plugin xfce4-verve-plugin xfce4-wavelan-plugin xfce4-weather-plugin xfce4-whiskermenu-plugin xfce4-wmdock-plugin xfce4-xkb-plugin xfce4-mount-plugin -y -f -q
		 sudo chmod u+s /usr/sbin/hddtemp	
	fi
	
	#instalando o wine
	if [[ $wine == "s" ]]; then
		clear
		echo "Instalando Wine"
		echo "----------------------------------------------------------------------"
		sudo apt-get install wine* -y
	fi
	
	#instalando o playonlinux
	if [[ $playonlinux == "s" ]]; then
		clear
		echo "Instalando o Playonlinux"
		echo "----------------------------------------------------------------------"
		sudo apt-get install playonlinux* -y
	fi
	
	#instalando o java8
	if [[ $java == "s" ]]; then
		clear
		echo "Instalando o Java 8"
		echo "----------------------------------------------------------------------"
		sudo apt-get install oracle-java8-installer -y
	fi
	
	#instalando o redshift
	if [[ $redshift == "s" ]]; then
		clear
		echo "Instalando o Redshift"
		echo "----------------------------------------------------------------------"
		sudo apt-get install redshift gtk-redshift -y
	fi
	
	#instalando o flux
	if [[ $flux == "s" ]]; then
		clear
		echo "Instalando o Flux"
		echo "----------------------------------------------------------------------"
		#instalando dependencias
		sudo apt-get install git python-appindicator python-xdg python-pexpect python-gconf python-gtk2 python-glade2 libxxf86vm1 -y

		#realizando download do flux
		cd /tmp && git clone "https://github.com/xflux-gui/xflux-gui.git" && cd xflux-gui && 

		#executando instalacao
		python download-xflux.py && python setup.py install && python setup.py install --user
	fi
	
	#instalando o nodejs
	if [[ $nodejs == "s" ]]; then
		#instalando npm
		sudo apt install nodejs npm -y

		#configurando o npm
		sudo npm -g install express knex pg bower	
	fi
	
	#instalando o atom
	if [[ $atom == "s" ]]; then
		#baixando o atom
#VERIFICAR	wget https://atom.io/download/deb
		#executando o arquivo
#VERIFICAR	sudo dpkg -i atom-amd64.deb
		#removendo o arquivo
#VERIFICAR	rm atom-amd64.deb
		echo "VERIFICAR";
	fi
		
	#atualizando os repositórios
	if [[ $update == "s" ]]; then
		clear	
		echo "Atualizando os repositórios na máquina"
		echo "----------------------------------------------------------------------"
		sudo apt update 
	fi
	
	#atualizando os programas
	if [[ $upgrade == "s" ]]; then
		clear	
		echo "Atualizando os programas da máquina"
		echo "----------------------------------------------------------------------"
		sudo apt upgrade -y
	fi		
		
	#corrigindo possiveis erros no sistema
	if [[ $corrigeerros == "s" ]]; then
		clear	
		echo "Corrigindo possiveis erros no Sistema"
		echo "----------------------------------------------------------------------"
		sudo apt-get check -y && 
		sudo dpkg --configure -a -y && 
		sudo apt-get -f install && 
		sudo apt-get -f remove -y && 
		sudo apt-get autoremove -y && 
		sudo apt-get clean -y && 
		sudo apt-get install auto-apt -y && 
		sudo auto-apt update-local -y && 
		sudo auto-apt update && 
		sudo auto-apt updatedb -y
	fi
	
	#configurando a swap
	if [[ $swap == "s" ]]; then	
		clear
		echo "Configurando a Swap"
		echo "-------------------"
		memoswap=$(grep "vm.swappiness=10" /etc/sysctl.conf)
		memocache=$(grep "vm.vfs_cache_pressure=60" /etc/sysctl.conf)
		background=$(grep "vm.dirty_background_ratio=15" /etc/sysctl.conf)
		ratio=$(grep "vm.dirty_ratio=25" /etc/sysctl.conf)
		clear
		echo "Diminuindo a Prioridade de uso da memória SWAP"
		echo
		if [[ $memoswap == "vm.swappiness=10" ]]; then
			echo "Otimizando..."
			/bin/su -c "echo 'vm.swappiness=10' >> /etc/sysctl.conf"
		elif [[ $memocache == "vm.vfs_cache_pressure=60" ]]; then
			echo "Otimizando..."
			/bin/su -c "echo 'vm.vfs_cache_pressure=60' >> /etc/sysctl.conf"
		elif [[ $background == "vm.dirty_background_ratio=15" ]]; then
			echo "Otimizando..."
			/bin/su -c "echo 'vm.dirty_background_ratio=15' >> /etc/sysctl.conf"
		elif [[ $ratio == "vm.dirty_ratio=25" ]]; then
			echo "Otimizando..."
			/bin/su -c "echo 'vm.dirty_ratio=25' >> /etc/sysctl.conf"
		else
			echo "Não há nada para ser otimizado"
			echo "Isso porque já foi otimizado anteriormente!"
		fi
	fi

	
	#reiniciando a maquina
	if [[ $reinicia == "s" ]]; then	
		#reiniciando a maquina em dois minutos
#VERIFICAR	sudo reboot -t 120 
		sudo reboot
	fi	
}

install_no()
{
	clear
	#relatorio de instalacao
	echo "As seguintes tarefas não serão realizadas..."
	echo "----------------------------------------------"
	if [[ $firefox == "n" ]]; then
  		echo "Firefox,"
	fi
	if [[ $steam == "n" ]]; then	
	 	echo "Steam, "
	fi
	if [[ $xampp == "n" ]]; then	
	 	echo "Xampp, "
	fi
	if [[ $spotify == "n" ]]; then	
	 	echo "Spotify, "
	fi
	if [[ $mac == "n" ]]; then	
	 	echo "Mac, "
	fi
	if [[ $codecs == "n" ]]; then	
		echo "Codecs,"
	fi
	if [[ $gimp == "n" ]]; then	
		echo "Gimp,"
	fi
	if [[ $xfce == "n" ]]; then	
		echo "Xfce,"
	fi
	if [[ $wine == "n" ]]; then	
		echo "Wine,"
	fi
	if [[ $playonlinux == "n" ]]; then	
		echo "PlayonLinux,"
	fi
	if [[ $java == "n" ]]; then	
		echo "Java 8,"
	fi
	if [[ $redshift == "n" ]]; then	
		echo "Redshift,"
	fi
	if [[ $flux == "n" ]]; then	
		echo "Flux,"
	fi
	if [[ $nodejs == "n" ]]; then	
		echo "NodeJS,"
	fi
	if [[ $atom == "n" ]]; then	
		echo "Atom,"
	fi
	
	if [[ $update == "n" ]]; then	
	 	echo "Atualizando repositórios, "
	fi
	
	if [[ $update == "n" ]]; then	
	 	echo "Atualizando programas, "
	fi
	
	if [[ $corrigeerros == "n" ]]; then	
	 	echo "Corrigindo Erros, "
	fi
	
	if [[ $swap == "n" ]]; then	
	 	echo "Swap, "
	fi
	
	if [[ $reinicia == "n" ]]; then	
		echo "Máquina não será reiniciada agora!"
	fi
	
	echo "----------------------------------------------"
}

#criando função global, que inicia todas as outras
auto_config()
{
	echo "INICIANDO AS TAREFAS"
		#correções
			update
			upgrade
			corrigeerros
			swap
			
		##verificando se usuario deseja realizar
			update
			firefox
			steam
			xampp
			spotify
			mac
			codecs
			gimp
			xfce
			wine
			playonlinux
			java
			redshift
			flux
			nodejs
			atom
		
		#verifica programas
			install_yes
			install_no
			
#		reinicia
####
####RESCREVER - INICIO
	#sistema
		#add_ppa
		#	sleep 1
		#update_system
		#	sleep 1	
		#program_xampp
		#	sleep 1
		#programs__essencials
		#	sleep 1
		#programs__others
		#	sleep 1
		#remove_programs
		#	sleep 1
		#program_prelink_preload_deborphan
		
	#otimizações		
		#cleaning_ubuntu
		#	sleep 1
####RESCREVER - FIM			
}

#mostrando mensagem inicial
menu()
{
	clear
	echo "Bem vindo ao script de automação de tarefas em Linux"
	echo "Ele irá realizar os seguintes passos"
	read -n1 -p "Para continuar escolha s(sim) ou n(não)  " escolha
		case $escolha in
			s|S) echo
				auto_config
				;;
			n|N) echo
				echo Finalizando o script...
				sleep 1
				exit
				;;
			*) echo
				echo Alternativa incorreta!! 
				sleep 1
				menu
				exit
				;;
		esac
}
menu