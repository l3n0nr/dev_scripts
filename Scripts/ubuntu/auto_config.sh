#!/bin/bash
################################################################################
#
###################
#FONTES DE PESQUISA
###################
#
#por oliveiradeflavio(Flávio Oliveira)
# contato: <github.com/oliveiradeflavio/scripts-linux>
#
#por gmanson(Gabriel Manson)
# contato: <github.com/gmasson/welcome-debian>
#
#por Lucas Alves Santos
# fonte: <https://www.vivaolinux.com.br/script/Instalar-Tor-Browser/>
#
#por Edivaldo Brito
# fonte: <http://www.edivaldobrito.com.br/instalando-ide-java-netbeans-8-0-ubuntu-e-derivados>
#
#por Fabiano de Oliveira e Souza
# fonte: <https://www.vivaolinux.com.br/script/Mantendo-hora-do-servidor-atualizada-com-NTP>
#
#por Lucas Novo Silva
# fonte: <https://www.vivaolinux.com.br/dica/Erro-de-apt-get-update-no-Ubuntu-1604-Xenial-problemas-nos-repositorios-RESOLVIDO>
#
################################################################################
#
###################
#DESENVOLVIDO POR
###################
#
#por lenonr(Lenon Ricardo) 
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
#############################
#versão do script: 0.0.56.4.2
#############################
#
#legenda: a.b.c.d.e
# a = alpha[0], beta[1];
#
# b = erros na execução;	
#
# c = interações com o script + versões funcionando;
#
# d = correções necessárias;
#	netbeans
#	android
#	vga
#
# e = pendencias
#	GBA
#	DeSmuME 
#
################################################################################
#
#Script testado em
#	-Xubuntu 16.04
#
#Compativel com
#	-Ubuntu
#	-Fedora
#
#FUNCOES
#Atualização
#	[+]Update
#		[+]Update-Grud
#	[+]Upgrade
#
#CorrigindoErros
#	[+]Swap
#	[+]Prelink, Preload, Deborphan
#	[+]Pacotes com problemas
#
#Limpeza
#	[+] Lixeira
#	[+] Firefox
#		[+] Cache
#		[+] Cookies
#
#	[+] Excluindo pacotes antigos
#	[+] Excluindo pacotes orfaõs
#	[+] Removendo arquivos temporários
# 	[+] Arquivos obsoletos
#	[+] Kernel's antigos
#	[+] Removendo arquivos (.bak, ~, tmp) pasta Home
#	[+] Excluindo arquivos inuteis do cache do gerenciador de pacotes
#
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
#	[+]Libreoffice
#	[-]Netbeans
#		VERIFICAR, INSTALAR TAMBEM JDK
#	
#	[+]Vlc
#	[+]Clementine
#	[+]Gparted
#	[+]Tlp
#	[+]Rar
#	[+]Git
#	[+]Lm-sensors
#	[+]Stellarium
#	[+]Texmaker
#	[+]Gnome-terminal
#	[+]Reaver
#	[+]Gnome System Monitor
#	[+]Tor
#	[+]Android Studio
#		VERIFICAR, INSTALAR TAMBEM JDK	
#
#	[+]NTP
#	[+]Hollywood
#	[+]Synaptic	
# 	[+]Dolphin
#	[+]Virtualbox
#	[+]Brackets
#	[+]Citra
#	[-]DeSmuME 
#		ENCONTRAR FORMA DE INSTALAÇÃO AUTOMÁTICA
#	[-]GBA - Gameboyadvanced
#
#Reinicialização
#	[+]Reiniciar
#
#ESTRUTURAR/DESENVOLVER/APRIMORAR
# 	-Criar uma interface gráfica, possibilitando ao usuário selecionar as ações que o usuário deseja realizar, selecionando apenas com o espaço.
#	-Possibilitar ao usuário o cancelamento das ações selecionadas, dentro de um tempo pré-determinado(10 seg.)
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

########################################################################
######CORREÇÃO SISTEMA
update()
{
	echo ""
	echo "Deseja atualizar os repositórios de sua máquina (s/n)?"
	read -p "??" update
}

upgrade()
{
	clear
	echo ""
	echo "Deseja atualizar os programas de sua máquina (s/n)?"
	read -p "??" upgrade
}

corrigeerros()
{
	clear
	echo ""
	echo "Deseja corrigir possíveis erros em sua distribuição (s/n)?"
	read -p "??" corrigeerros
}

swap()
{
	clear
	echo ""
	echo "Deseja otimizar a utilização da swap (s/n)?"
	read -p "??" swap
}

pacotesquebrados()
{
	clear
	echo ""
	echo "Deseja realizar uma correção nos pacotes quebrados do sistema (s/n)?"
	read -p "??" pacotesquebrados
}

prelink_preload_deborphan()
{
	clear
	echo ""
	echo "Deseja executar o Prelink, Preload e Deborphan(s/n)?"
	read -p "??" prelink_preload_deborphan
}

pacotes_antigos()
{
	clear
	echo ""
	echo "Deseja remover os pacotes antigos do sistema(s/n)?"
	read -p "??" pacotes_antigos
}

########################################################################
######LIMPANDO A MÁQUINA
kernel()
{
	clear
	echo ""
	echo "Deseja realizar uma limpeza nos seus antigos kernel's (s/n)?"
	read -p "??" kernel
}

temporario()
{
	clear
	echo ""
	echo "Deseja remover os arquivos temporários do sistema operacional (s/n)?"
	read -p "??" temporario
}

obsoleto()
{
	clear
	echo ""
	echo "Deseja remover os arquivos obsoletos do sistema operacional (s/n)?"
	read -p "??" obsoleto
}

lixeira()
{
	clear
	echo ""
	echo "Deseja apagar todos os arquivos da Lixeira (s/n)?"
	read -p "??" lixeira
}

firefoxcache()
{
	clear
	echo ""
	echo "Deseja realizar a limpeza no Cache do navegador Firefox (s/n)?"
	read -p "??" firefoxcache
}

firefoxcookie()
{
	clear
	echo ""
	echo "Deseja realizar a limpeza nos cookies no navegador Firefox (s/n)?"
	read -p "??" firefoxcookie
}

arquivosorfaos()
{
	clear
	echo ""
	echo "Deseja realizar a limpeza nos arquivos orfãos do sistema (s/n)?"
	read -p "??" arquivosorfaos
}

arquivosinuteis()
{
	clear
	echo ""
	echo "Deseja realizar a limpeza nos arquivos obsoletos do sistema (s/n)?"
	read -p "??" arquivosinuteis
}

########################################################################
######INSTALANDO PROGRAMAS
firefox()
{
	clear
	echo ""
	echo "Deseja instalar o firefox? (s/n)"
	read -p "?? " firefox
}

steam()
{
	clear
	echo ""
	echo "Deseja instalar o steam? (s/n)"
	read -p "?? " steam
}

xampp()
{
	clear
	echo ""
	echo "Deseja instalar o xampp? (s/n)"
	read -p "?? " xampp
}

spotify()
{
	clear
	echo ""
	echo "Deseja instalar o spotify? (s/n)"
	read -p "??" spotify
}

mac()
{
	clear
	echo ""
	echo "Deseja instalar o tema e ícones do MAC OS X? (s/n)"
	read -p "??" mac
}

codecs()
{
	clear
	echo ""
	echo "Deseja instalar codecs multimidia em seu sistema (s/n)?"
	read -p "??" codecs
}

gimp()
{
	clear
	echo ""
	echo "Deseja instalar o Gimp em seu sistema (s/n)?"
	read -p "??" gimp
}

xfce()
{
	clear
	echo ""
	echo "Deseja instalar componentes adicionais do XFCE em sua máquina (s/n)?"
	read -p "??" xfce
}

wine()
{
	clear
	echo ""
	echo "Deseja instalar o wine (s/n)?"
	read -p "??" wine
}

playonlinux()
{
	clear
	echo ""
	echo "Deseja instalar o playonlinux (s/n)?"
	read -p "??" playonlinux
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
	read -p "??" redshift
}

flux()
{
	clear
	echo ""
	echo "Deseja instalar o Flux (s/n)?"
	read -p "??" flux
}

nodejs()
{
	clear
	echo ""
	echo "Deseja instalar o NodeJS (s/n)?"
	read -p "??" nodejs
}

atom()
{
	clear
	echo ""
	echo "Deseja instalar o Atom (s/n)?"
	read -p "??" ato
}

libreoffice()
{
	clear
	echo ""
	echo "Deseja instalar o LibreOffice (s/n)?"
	read -p "??" libreoffice
}

vlc()
{
	clear
	echo ""
	echo "Deseja instalar o VLC (s/n)?"
	read -p "??" vlc
}

netbeans()
{
	clear
	echo ""
	echo "Deseja instalar o Netbeans (s/n)?"
	read -p "??" netbeans
}

clementine()
{
	clear
	echo ""
	echo "Deseja instalar o Clementine (s/n)?"
	read -p "??" clementine
}

gparted()
{
	clear
	echo ""
	echo "Deseja instalar o Gparted (s/n)?"
	read -p "??" gparted
}

tlp()
{
	clear
	echo ""
	echo "Deseja instalar o Tlp (s/n)?"
	read -p "??" tlp
}

rar()
{
	clear
	echo ""
	echo "Deseja instalar o Rar (s/n)?"
	read -p "??" rar
}

git()
{
	clear
	echo ""
	echo "Deseja instalar o Git (s/n)?"
	read -p "??" git
}

lmsensors()
{
	clear
	echo ""
	echo "Deseja instalar o Lm-Sensors (s/n)?"
	read -p "??" lmsensors
}

stellarium()
{
	clear
	echo ""
	echo "Deseja instalar o Stellarium (s/n)?"
	read -p "??" stellarium
}

texmaker()
{
	clear
	echo ""
	echo "Deseja instalar o Texmaker (s/n)?"
	read -p "??" texmaker
}

gnometerminal()
{
	clear
	echo ""
	echo "Deseja instalar o Gnome-Terminal (s/n)?"
	read -p "??" gnometerminal
}

reaver()
{
	clear
	echo ""
	echo "Deseja instalar o Reaver (s/n)?"
	read -p "??" reaver
}

gnomesystem()
{
	clear
	echo ""
	echo "Deseja instalar o Gnome System Monitor (s/n)?"
	read -p "??" gnomesystem
}

tor()
{
	clear
	echo ""
	echo "Deseja instalar o Navegador Tor (s/n)?"
	read -p "??" tor
}

android()
{
	clear
	echo ""
	echo "Deseja instalar o Android Studio (s/n)?"
	read -p "??" android
}

ntp()
{
	clear
	echo ""
	echo "Deseja instalar o NTP e atualizar a data/hora do seu sistema (s/n)?"
	read -p "??" ntp
}

hollywood()
{
	clear
	echo ""
	echo "Deseja instalar o recurso Hollywood, que irá torná-lo um super hacker? (s/n)?"
	read -p "??" hollywood
}

synaptic()
{
	clear
	echo ""
	echo "Deseja instalar o Synaptic? (s/n)?"
	read -p "??" synaptic
}

dolphin()
{
	clear
	echo ""
	echo "Deseja instalar o Dolphin? (s/n)?"
	read -p "??" dolphin
}

virtualbox()
{
	clear
	echo ""
	echo "Deseja instalar o Virtualbox? (s/n)?"
	read -p "??" virtualbox
}

brackets()
{
	clear
	echo ""
	echo "Deseja instalar o Brackets? (s/n)?"
	read -p "??" brackets
}

citra()
{
	clear
	echo ""
	echo "Deseja instalar o Citra? (s/n)?"
	read -p "??" citra
}

########################################################################
######REINICIANDO
reinicia()
{
	clear
	echo ""
	echo "Deseja reiniciar a máquina agora, para concluir a instalação? (s/n)"
	read -p "??" reinicia;
}

install_yes()
{
#relatorio de instalacao
	echo "As seguintes tarefas serão realizadas..."
	echo "----------------------------------------------"

	######CORREÇÃO SISTEMA
		#atualizando os repositórios
		if [[ $update == "s" ]]; then
			if [ "$distro" == "Ubuntu" ]; then
				clear
				echo "Atualizando os repositórios na máquina"
				echo "----------------------------------------------------------------------"
				apt update
				update-grub
				
			elif [ "$distro" == "Fedora" ]; then
				clear
				echo "Atualizando os repositórios na máquina"
				echo "----------------------------------------------------------------------"
				dnf distro-sync 
			fi
		fi
		
		#atualizando os programas
		if [[ $upgrade == "s" ]]; then
			if [ "$distro" == "Ubuntu" ]; then
				clear
				echo "Atualizando os programas da máquina"
				echo "----------------------------------------------------------------------"
				apt upgrade -y
				apt-get dist-upgrade
			elif [ "$distro" == "Fedora" ]; then
				clear
				echo "Atualizando os programas da máquina"
				echo "----------------------------------------------------------------------"
				dnf update -y 
			fi
		fi
	
		#corrigindo possiveis erros no sistema
		if [[ $corrigeerros == "s" ]]; then
			clear
			echo "Corrigindo possiveis erros no Sistema"
			echo "----------------------------------------------------------------------"
			apt-get check -y &&
			dpkg --configure -a -y &&
			apt-get -f install &&
			apt-get -f remove -y &&
			apt-get autoremove -y &&
			apt-get clean -y &&
			apt-get install auto-apt -y &&
			auto-apt update-local -y &&
			auto-apt update -y &&
			auto-apt updatedb -y
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
		
		#otimizando sistema
		if [[ $prelink_preload_deborphan == "s" ]]; then		
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
			
			#configurando o prelink e o preload
			echo ""
			echo "Configurando Prelink e Preload..."
			echo "-------------------"
				memfree=$(grep "memfree = 50" /etc/preload.conf)
				memcached=$(grep "memcached = 0" /etc/preload.conf)
				processes=$(grep "processes = 30" /etc/preload.conf)
				prelink=$(grep "PRELINKING=unknown" /etc/default/prelink)
				
#########################################################################################################################
#			if which -a prelink 1>/dev/null 2>/dev/stdout && which -a preload 1>/dev/null 2>/dev/stdout; then
#				echo
#				echo "Configurando o PRELOAD"
#				if [[ $memfree == "memfree = 90" ]];then
#					echo "configurando..."
#					sed -i 's/memfree = 50/memfree = 90/g' /etc/preload.conf
#			
#				elif [[ $memcached == "memcached = 35" ]]; then
#					echo "configurando..."
#					sed -i 's/memcached = 0/memcached = 35/g' /etc/preload.conf
#
#				elif [[ $processes == "processes = 50" ]]; then
#					echo "configurando..."
#					sed -i 's/processes = 30/processes = 50/g' /etc/preload.conf	
#				else
#					echo "Não há nada para ser configurado"
#					echo "Isso porque já foi configurado anteriomente"
#			fi		
#########################################################################################################################
						
			echo "Ativando o PRELINK"
			if [[ $prelink == "PRELINKING=unknown" ]]; then
				echo "adicionando ..."
				sed -i 's/unknown/yes/g' /etc/default/prelink	
			else
				echo "Otimização já adicionada anteriormente."
			fi
		fi
		
		#corrigindo pacotes quebrados
		if [[ $pacotesquebrados == "s" ]]; then
			#VERIFICAR AÇÕES
			dpkg --configure -a
			#VERIFICAR AÇÕES
			rm -r /var/lib/apt/lists  sudo mkdir -p /var/lib/apt/lists/partial
		fi	
	
	######LIMPANDO A MAQUINA
		#removendo kernel antigo
		if [[ $kernel == "s" ]]; then
			clear
			echo "Removendo os kernel's temporários do sistema"
			echo "--------------------------------------------"
			#removendo kernel's antigos
			dpkg -l 'linux-*' | sed '/^ii/!d;/'"$(uname -r | sed "s/\(.*\)-\([^0-9]\+\)/\1/")"'/d;s/^[^ ]* [^ ]* \([^]*\).*/\1/;/[0-9]/!d' | xargs apt-get -y purge
		fi
		
		#removendo arquivos temporarios
		if [[ $temporario == "s" ]]; then
			clear
			echo "Removendo arquivos temporários do sistema"
			echo "-----------------------------------------"
			find ~/.thumbnails -type f -atime +2 -exec rm -Rf {} \+
			
			#arquivo temporaritos pasta home
#			for i in *~ *.bak *.tmp; do
#				find $HOME -iname "$i" -exec rm -f {} \	
		fi
		
		#removendo arquivos obsoletos
		if [[ $obsoleto == "s" ]]; then
			clear
			echo "Removendo os arquivos obsoletos do sistema"
			echo "-----------------------------------------"
			apt-get clean -y && apt-get autoclean -y
		fi
		
		#limpando a lixeira
		if [[ $lixeira == "s" ]]; then
			clear
			echo "Removendo todos os arquivos da Lixeira"
			echo "--------------------------------------"
			rm -Rf ~/.local/share/Trash/files/*
		fi

		#limpando cache do firefox
		if [[ $firefoxcache == "s" ]]; then
			clear
			echo "Realizando a limpeza no cache no navegador Firefox"
			echo "--------------------------------------"
			rm - Rf ~/.mozilla/firefox/*.default/*.sqlite
			rm -Rf ~/.cache/mozilla/firefox/*.default/*
		fi
		
		#limpando cookies do firefox
		if [[ $firefoxcookie == "s" ]]; then
			clear
			echo "Realizando a limpeza nos cookies no navegador Firefox"
			echo "--------------------------------------"
			rm -Rf ~/.mozilla/firefox/*.default/cookies.sqlite
		fi

		#limpando arquivos orfaos
		if [[ $arquivosorfaos == "s" ]]; then
			clear
			echo "Removendo Pacotes Órfãos"
			echo "------------------------"
			apt-get remove $(deborphan) -y ; apt-get autoremove -y
		fi
		
		#limpando arquivos inuteis
		if [[ $arquivosinuteis == "s" ]]; then
			if [ "$distro" == "Ubuntu" ]; then
				clear
				echo "Removendo Pacotes inúteis"
				echo "------------------------"
				apt-get clean -y
			elif [ "$distro" == "Fedora" ]; then
				clear
				echo "Removendo Pacotes inúteis"
				echo "------------------------"				
				dnf autoremove -y 
				dnf clean all 
			fi
		fi	
		
		#removendo pacotes antigos
		if [[ $pacotes_antigos == "s" ]]; then		
			apt-get autoremove -y
		fi
	
	######INSTALANDO PROGRAMAS
		if [[ $firefox == "s" ]]; then
				clear
	  		echo "Firefox, "

				#instalando o firefox
	  		apt install firefox -y
		fi

		if [[ $steam == "s" ]]; then
			clear
		 	echo "Steam"

			#instalando o steam
	 		apt install steam -y
		fi

		#instalando o xampp
		if [[ $xampp == "s" ]]; then
			clear
		 	echo "Xampp, (Ele irá precisar da sua atenção)"
			echo "Instalando XAMPP em sua máquina"
			echo "----------------------------------------------------------------------"

			#baixando o pacote
			wget http://nbtelecom.dl.sourceforge.net/project/xampp/XAMPP%20Linux/5.6.14/xampp-linux-x64-5.6.14-0-installer.run -O xampp-installer.run
			echo "Realizando a instalação..."
			echo "---------------------"

			#dando permissão para execução
			chmod +x xampp-installer.run

			#executando o arquivo
			./xampp-installer.run

			#removendo o arquivo
			rm xampp-installer.run
		fi

		if [[ $spotify == "s" ]]; then
			clear
			echo "Instalando Spotify"
			echo "----------------------------------------------------------------------"

			#baixando pacote
			sh -c "echo 'deb http://repository.spotify.com stable non-free' >> /etc/apt/sources.list"

			#baixando chave
			apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2C19886

			#atualizando lista de repositorios
			apt update -y

			#instalando o spotify
			apt-get install spotify-client -y
		fi

		if [[ $mac == "s" ]]; then
			clear
			"Instalando icones e temas do MacOS X"
			#adicionando repositorio
			add-apt-repository ppa:noobslab/macbuntu -y

			#atualizando lista de repositorios
			apt update

			#instalando icones do MacOS
			apt-get install macbuntu-os-icons-lts-v7 -y

			#instalando tema do MacOS
			apt-get install macbuntu-os-ithemes-lts-v7 -y
		fi

		if [[ $codecs == "s" ]]; then
			clear
			echo "Instalando Pacotes Multimidias (Codecs)"
			echo "----------------------------------------------------------------------"

			#instalando pacotes multimidias
			apt install ubuntu-restricted-extras faac faad ffmpeg gstreamer0.10-ffmpeg flac icedax id3v2 lame libflac++6 libjpeg-progs libmpeg3-1 mencoder mjpegtools mp3gain mpeg2dec mpeg3-utils mpegdemux mpg123 mpg321 regionset sox uudeview vorbis-tools x264 arj p7zip p7zip-full p7zip-rar rar unrar unace-nonfree sharutils uudeview mpack cabextract libdvdread4 libav-tools libavcodec-extra-54 libavformat-extra-54 easytag gnome-icon-theme-full gxine id3tool libmozjs185-1.0 libopusfile0 libxine1 libxine1-bin libxine1-ffmpeg libxine1-misc-plugins libxine1-plugins libxine1-x nautilus-script-audio-convert nautilus-scripts-manager tagtool spotify-client prelink deborphan oracle-java7-installer -y --force-yes
		fi

		if [[ $gimp == "s" ]]; then
			clear
			echo "Instalando o Gimp"
			echo "----------------------------------------------------------------------"

			#instalando o gimp
			apt-get install gimp* -y
		fi

		if [[ $xfce == "s" ]]; then
			if [ "$distro" == "Ubuntu" ]; then
				clear
				echo "Instalando Adicionais do XFCE4"
				echo "----------------------------------------------------------------------"
				#instalando componentes do XFCE
				apt-get install xfce4-battery-plugin xfce4-clipman-plugin xfce4-cpufreq-plugin xfce4-cpugraph-plugin xfce4-datetime-plugin xfce4-diskperf-plugin xfce4-eyes-plugin xfce4-fsguard-plugin xfce4-genmon-plugin xfce4-indicator-plugin xfce4-linelight-plugin xfce4-mailwatch-plugin xfce4-mpc-plugin xfce4-notes-plugin xfce4-places-plugin xfce4-netload-plugin xfce4-quicklauncher-plugin xfce4-radio-plugin xfce4-screenshooter-plugin xfce4-sensors-plugin xfce4-smartbookmark-plugin xfce4-systemload-plugin xfce4-timer-plugin xfce4-time-out-plugin xfce4-verve-plugin xfce4-wavelan-plugin xfce4-weather-plugin xfce4-whiskermenu-plugin xfce4-wmdock-plugin xfce4-xkb-plugin xfce4-mount-plugin -y -f -q

				#dando permissão de leitura, para verificar temperatura do HDD
				chmod u+s /usr/sbin/hddtemp
				
			elif [ "$distro" == "Fedora" ]; then
				clear
				echo "Instalando Adicionais do XFCE4"
				echo "----------------------------------------------------------------------"
				#instalando componentes do XFCE
				dnf install xfce4-battery-plugin xfce4-clipman-plugin xfce4-cpufreq-plugin xfce4-cpugraph-plugin xfce4-datetime-plugin xfce4-diskperf-plugin xfce4-eyes-plugin xfce4-fsguard-plugin xfce4-genmon-plugin xfce4-indicator-plugin xfce4-linelight-plugin xfce4-mailwatch-plugin xfce4-mpc-plugin xfce4-notes-plugin xfce4-places-plugin xfce4-netload-plugin xfce4-quicklauncher-plugin xfce4-radio-plugin xfce4-screenshooter-plugin xfce4-sensors-plugin xfce4-smartbookmark-plugin xfce4-systemload-plugin xfce4-timer-plugin xfce4-time-out-plugin xfce4-verve-plugin xfce4-wavelan-plugin xfce4-weather-plugin xfce4-whiskermenu-plugin xfce4-wmdock-plugin xfce4-xkb-plugin xfce4-mount-plugin -y -f -q
				
				#dando permissão de leitura, para verificar temperatura do HDD
				chmod u+s /usr/sbin/hddtemp
			fi
		fi

		if [[ $wine == "s" ]]; then
			clear
			echo "Instalando Wine"
			echo "----------------------------------------------------------------------"
			#adicionado o repositorio
			add-apt-repository ppa:ubuntu-wine/ppa -y

			#instalando o wine
			apt-get install wine* -y
		fi

		if [[ $playonlinux == "s" ]]; then
			clear
			echo "Instalando o Playonlinux"
			echo "----------------------------------------------------------------------"

			#instalando o playonlinux
			apt-get install playonlinux* -y
		fi

		if [[ $java == "s" ]]; then
			clear
			echo "Instalando o Java 8"
			echo "----------------------------------------------------------------------"
			#adicionando repositorio
			add-apt-repository ppa:webupd8team/java -y

			#instalando o java8
			apt-get install oracle-java8-installer -y
		fi

		if [[ $redshift == "s" ]]; then
			clear
			echo "Instalando o Redshift"
			echo "----------------------------------------------------------------------"

			#instalando o redshift
			apt-get install redshift gtk-redshift -y
		fi

		#instalando o flux
		if [[ $flux == "s" ]]; then
			clear
			echo "Instalando o Flux"
			echo "----------------------------------------------------------------------"
			#instalando dependencias
			apt-get install git python-appindicator python-xdg python-pexpect python-gconf python-gtk2 python-glade2 libxxf86vm1 -y

			#realizando download do flux
			cd /tmp && git clone "https://github.com/xflux-gui/xflux-gui.git" && cd xflux-gui &&

			#executando instalacao
			sudo python download-xflux.py &&
			sudo python setup.py install &&
			sudo python setup.py install --user
		fi

		#instalando o nodejs
		if [[ $nodejs == "s" ]]; then
			#instalando npm
			apt install nodejs npm -y

			#configurando o npm
			npm -g install express knex pg bower
		fi

		#instalando o atom
		if [[ $atom == "s" ]]; then
			#baixando o atom
			wget https://atom.io/download/deb -O atom-amd64.deb

			#executando o arquivo
			dpkg -i atom-amd64.deb

			#removendo o arquivo
			rm atom-amd64.deb
		fi

		#instalando o libreoffice
		if [[ $libreoffice == "s" ]]; then
			#adicionando ppa
			add-apt-repository ppa:libreoffice/ppa -y
			#instalando libreoffice
			apt install libreoffice* -y
		fi

		#instalando o vlc
		if [[ $vlc == "s" ]]; then
			apt install vlc* -y
		fi

		#instalando o netbeans
		if [[ $netbeans == "s" ]]; then
			echo "Baixando o Netbeans + JDK8"
			echo "A INSTALAÇÃO, PRECISARÁ DE SUA ATENÇÃO"
			echo "----------------------------------------------------------------------"
			#baixando o arquivo
			wget -c http://download.oracle.com/otn-pub/java/jdk-nb/8-8.0/jdk-8-nb-8-linux-x64.sh?AuthParam=1395311377_7cbe28b25486a89be5d8399b8a43c7a6 -O netbeans.sh
			echo "Realizando a instalação..."
			echo "----------------------------------------------------------------------"
			#alterando permissao de execucao
			chmod +x netbeans.sh

			#execuntando arquivo
			./netbeans.sh

			#removendo arquivo
			rm netbeans-8.2-linux.sh
		fi

		if [[ $clementine == "s" ]]; then
			#instalando o clementine
			apt install clementine* -y
		fi

		if [[ $gparted == "s" ]]; then
			#instalando o gparted
			apt install gparted* -y
		fi

		if [[ $tlp == "s" ]]; then
			#instalando o tlp
			apt install tlp* -y
		fi

		if [[ $rar == "s" ]]; then
			#instalando o rar
			apt install rar* -y
		fi

		if [[ $git == "s" ]]; then
			#instalando o git
			apt install git* gitg* -y
		fi

		if [[ $lmsensors == "s" ]]; then
			#instalando o lmsensors
			apt install lm-sensors -y
		fi

		if [[ $stellarium == "s" ]]; then
			#instalando o stellarium
			apt install stellarium* -y
		fi

		if [[ $texmaker == "s" ]]; then
			#instalando o texmaker
			apt install texmaker* -y
		fi

		if [[ $gnometerminal == "s" ]]; then
			#instalando o gnometerminal
			apt install gnometerminal* -y
		fi

		if [[ $reaver == "s" ]]; then
			#instalando o reaver
			apt-get install reaver
		fi

		if [[ $gnomesystem == "s" ]]; then
			#instalando gnomesystem monitor
			apt-get install gnome-system-monitor-y
		fi

		if [[ $tor == "s" ]]; then
			#baixando o tor
			wget https://dist.torproject.org/torbrowser/6.0.7/tor-browser-linux32-6.0.7_en-US.tar.xz -O tor-browser.tar.xz

			#extraindo o arquivo
			sudo tar -xvJf tor-browser.tar.xz -C /opt/

			#movendo arquivos
			sudo mv /opt/tor-browser*/ /opt/tor-browser

			#VERIFICAR
			sudo ln -sf /opt/tor-browser/Browser/start-tor-browser /usr/bin/torbrowser

			#removendo arquivo download
			rm tor-browser.tar.xz
		fi

		if [[ $vba == "s" ]]; then
#VERIFICAR NAO ESTA FUNCIONANDO	
			#corrigindo dependencias
			apt install -f -y

			#adicionando dependencias
			apt-get install cmake libgtkmm-2.4-dev libglademm-2.4-dev libgtkglextmm-x11-1.2-dev libsdl1.2-dev checkinstall -y

			#corrigindo dependencias
			apt install -f -y

			#baixando vba
			wget https://sourceforge.net/projects/vbam/files/Linux%20Binaries/VBA-M%202.0.0%20Beta%201%20-%20Ubuntu%20-%2064%20bits.zip/download

			#extraindo pasta
			unzip vba.zip -d vba && clear && echo "Arquivo extraido com sucesso!"

			#entrando na pasta
			cd vba/VBA-M\ 2.0.0\ Beta\ 1\ -\ Ubuntu\ -\ 64\ bits/15.04

			#instalando pacotes deb
			dpkg -i *.deb

			#voltando pasta origem
			cd .. && cd .. && cd ..

			#removendo arquivos criados
			rm -rf vba && rm vba.zip
		fi
		
		if [[ $android == "s" ]]; then
			#adicionando repositorio
			apt-add-repository ppa:paolorotolo/android-studio

			#atualizando lista de repositorios
			apt update

			#instalando android studio
			apt-get install android-studio
		fi
		
		if [[ $ntp == "s" ]]; then
			#instalando software necessario
			apt-get install ntpdate* -y

			#realizando atualizacao hora/data
			echo "Atualizando hora do servidor"
			echo "Data e hora atual: `date +%d/%m/%Y" "%H:%M:%S`"

			#servidor 1
			echo "Servidor ntp.cais.rnp.br"
				/usr/sbin/ntpdate ntp.cais.rnp.br

			#servidor 2			
			echo "Servidor ntp.ansp.br"
				/usr/sbin/ntpdate ntp.ansp.br

			echo "Data e hora atual: `date +%d/%m/%Y" "%H:%M:%S`"
			echo "Hora do servidor atualizada!"
		fi
		
		if [[ $hollywood == "s" ]]; then
			#instalando recurso para hackear a matrix
			sudo apt install hollywood
		fi
		
		if [[ $synaptic == "s" ]]; then
			#instalando o synaptic
			apt-get install synaptic* -y
		fi
		
		if [[ $dolphin == "s" ]]; then
			#adicionando repositorio do dolphin
			add-apt-repository ppa:glennric/dolphin-emu
			
			#atualizando lista de repositorios
			apt-get update
			
			#corrigindo problemas de dependencias
			apt-get install -f

			#instalando dolphin
			apt-get install dolphin-emu
			#apt-get install dolphin-emu-master
		fi

		if [[ $visualbox == "s" ]]; then
			#baixando o arquivo 		
			wget http://download.virtualbox.org/virtualbox/5.1.10/virtualbox-5.1_5.1.10-112026~Ubuntu~yakkety_amd64.deb -O virtualbox.deb
			#executando o arquivos
			dpkg -i virtualbox.deb

			#removendo o arquivo baixando
			rm virtualbox.deb
		fi
		
		if [[ $brackets == "s" ]]; then
			#adicionando repositorio
			sudo add-apt-repository ppa:webupd8team/brackets && 
			
			#atualizando lista repositorios
			sudo apt-get update && 
			
			#instalando brackets
			sudo apt-get install brackets
		fi
		
		if [[ $citra == "s" ]]; then
			#SDL2
			#apt-get install sdl2
			#apt-get install libsdl2-2.0-0
			apt-get install libsdl2-dev

			#Qt
			apt-get install qtbase5-dev libqt5opengl5-dev

			#GCC
			apt-get install build-essential
	
			#Cmake
			apt-get install cmake
	
			#Clang
			apt-get install clang libc++-dev
	
			#copiando repositorio
			git clone --recursive https://github.com/citra-emu/citra
			
			#entrando na pasta
			cd citra
			
			#construindo o citra
			mkdir build && cd build
			cmake ..
			make
			make install 	
		fi
					
######REINICIANDO
	#reiniciando a maquina
	if [[ $reinicia == "s" ]]; then
		#reiniciando a maquina em dois minutos
#VERIFICAR	sudo reboot -t 120
		reboot
	fi
}

########################################################################
install_no()
{
	#relatorio de instalacao
	echo "As seguintes tarefas não serão realizadas..."
	echo "----------------------------------------------"
	
######CORREÇÃO SISTEMA
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
	
	if [[ $pacotesquebrados == "n" ]]; then
		echo "Pacotes quebrados,"
	fi
	
	if [[ $prelink_preload_deborphan == "n" ]]; then
		echo "Prelink, Preload, Deborphan"
	fi
	
	if [[ $pacotes_antigos == "n" ]]; then
		echo "Pacotes antigos"
	fi

######LIMPANDO A MAQUINA
	if [[ $kernel == "n" ]]; then
		echo "Removendo kernel's antigos,"
	fi

	if [[ $temporario == "n" ]]; then
		echo "Removendo arquivos temporários,"
	fi

	if [[ $obsoleto == "n" ]]; then
		echo "Removendo arquivos obsoletos,"
	fi

	if [[ $lixeira == "n" ]]; then
		echo "Removendo arquivos da Lixeira,"
	fi

	if [[ $firefoxcache == "n" ]]; then
		echo "Limpeza no cache do Firefox"
	fi

	if [[ $firefoxcookie == "n" ]]; then
		echo "Limpeza nos cookies do Firefox"
	fi

	if [[ $arquivosorfaos == "n" ]]; then
		echo "Arquivos orfãos do sistema"
	fi

	if [[ $arquivosinuteis == "n" ]]; then
		echo "Arquivos Inuteis"
	fi
	
######INSTALANDO PROGRAMAS
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

	if [[ $libreoffice == "n" ]]; then
		echo "Libreoffice,"
	fi

	if [[ $vlc == "n" ]]; then
		echo "Vlc,"
	fi

	if [[ $netbeans == "n" ]]; then
		echo "Netbeans,"
	fi

	if [[ $clementine == "n" ]]; then
		echo "Clementine,"
	fi

	if [[ $gparted == "n" ]]; then
		echo "Gparted,"
	fi

	if [[ $tlp == "n" ]]; then
		echo "Tlp,"
	fi

	if [[ $rar == "n" ]]; then
		echo "Rar,"
	fi
	
	if [[ $git == "n" ]]; then
		echo "Git,"
	fi

	if [[ $lmsensors == "n" ]]; then
		echo "Lm-sensors,"
	fi

	if [[ $stellarium == "n" ]]; then
		echo "Stellarium,"
	fi

	if [[ $texmaker == "n" ]]; then
		echo "Texmaker,"
	fi

	if [[ $gnometerminal == "n" ]]; then
		echo "Gnome-Terminal,"
	fi
	
	if [[ $reaver == "n" ]]; then
		echo "Reaver,"
	fi

	if [[ $gnomesystem == "n" ]]; then
		echo "Gnome System Monitor,"
	fi

	if [[ $tor == "n" ]]; then
		echo "Tor,"
	fi
	
	if [[ $android == "n" ]]; then
		echo "Android Studio,"
	fi
	
	if [[ $ntp == "n" ]]; then
		echo "NTP,"
	fi
	
	if [[ $hollywood == "n" ]]; then
		echo "Hollywood,"
	fi
	
	if [[ $synaptic == "n" ]]; then
		echo "Synaptic,"
	fi
	
	if [[ $dolphin == "n" ]]; then
		echo "Dolphin,"
	fi
	
	if [[ $virtualbox == "n" ]]; then
		echo "Virtualbox,"
	fi	
	
	if [[ $brackets == "n" ]]; then
		echo "Brackets,"
	fi
	
	if [[ $citra == "n" ]]; then
		echo "Citra,"
	fi
	
######REINICIANDO
	if [[ $reinicia == "n" ]]; then
		echo "Máquina não será reiniciada agora!"
	fi

	echo "----------------------------------------------"
}

#criando função global, que inicia todas as outras
auto_config_ubuntu()
{
	echo "INICIANDO AS TAREFAS"
	#chama as funções para serem realizadas[pergunta ao usuário quais ações ele deseja realizar]
	echo "----------------------------------------"
	echo "Digite 1 para atualizar o sistema,"
	echo "Digite 2 para corrigir possíveis erros," 
	echo "Digite 3 para realizar uma limpeza," 
	echo "Digite 4 para instalar alguns programas," 
	echo "Digite 5 para reiniciar a máquina."
	echo "Digite 6 para sair do script;"
	echo "----------------------------------------" 
 	read -n1 -p "Ação:" escolha
	clear
	case $escolha in
	
	#atualizando o sistema
	1) echo
		update
		upgrade	
		;;
		
	#corrigindo erros
	2) echo
		corrigeerros
		swap
		pacotesquebrados
		;;
	
	#limpando a máquina
	3) echo
		kernel
		temporario
		obsoleto
		lixeira
		firefoxcache
		firefoxcookie
		arquivosorfaos
		arquivosinuteis
		prelink_preload_deborphan
		pacotes_antigos
		;;
		
	#instalando programas	
	4) echo
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
		libreoffice
		vlc
		netbeans
		clementine
		gparted
		tlp
		rar
		git
		lmsensors
		stellarium
		texmaker
		gnometerminal
		reaver
		gnomesystem
		tor
		android
		ntp
		hollywood
		synaptic
		dolphin
		virtualbox	
		brackets
		citra
		;;
		
	#reiniciando	
	5) echo
		reinicia
		;;
	
	#saindo
	6) echo 	
		exit
		;;
		
	#entrada inválida	
	*) echo
		echo Alternativa incorreta!!
		sleep 1
		menu
		exit
		;;
	esac

#inicia as funções que o usuário escolheu, executando primeiro as que ele deseja, posteriormente mostrando as que ele não quis realizar.
	install_yes
	install_no

	echo "TAREFAS FINALIZADAS, SAINDO.."
	clear
}

auto_config_fedora()
{
	echo "INICIANDO AS TAREFAS"
		#chama as funções para serem realizadas[pergunta ao usuário quais ações ele deseja realizar]
		
	#inicia as funções que o usuário escolheu, executando primeiro as que ele deseja, posteriormente mostrando as que ele não quis realizar.
		update
		upgrade	
		arquivosinuteis		
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
				#verificar distribuição utilizada
				distro=$(cat /etc/*-release | grep DISTRIB_ID | sed -e "s;DISTRIB_ID=;;")
				
				#executando ações para a distribuição Ubuntu
				if [ "$distro" == "Ubuntu" ]; then
					clear
					echo "Você utiliza a distribuição(ou derivação) Ubuntu"
					echo "Serão executadas ações especificas para esse tipo de distribuição"
					echo "------------------------------------------------"
					clear
					auto_config_ubuntu

				#executando ações para a distribuição Fedora	
				elif [ "$distro" == "Fedora" ]; then
					clear
					echo "Você utiliza a distribuição(ou derivação) Red Hat"
					echo "Serão executadas ações especificas para esse tipo de distribuição"
					echo "------------------------------------------------"
					clear
					auto_config_fedora					
					
				#distribuição não identificada	
				else
					echo "Script incompativel(TEMPORARIAMENTE)"
				fi
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