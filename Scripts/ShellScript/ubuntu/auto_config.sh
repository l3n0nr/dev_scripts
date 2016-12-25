#!/bin/bash
#
######################
# FONTES DE PESQUISA #
######################
#
# por oliveiradeflavio(Flávio Oliveira)
# 	contato: <github.com/oliveiradeflavio/scripts-linux>
#
# por gmanson(Gabriel Manson)
# 	contato: <github.com/gmasson/welcome-debian>
#
# por Lucas Alves Santos
# 	fonte: <https://www.vivaolinux.com.br/script/Instalar-Tor-Browser/>
#
# por Edivaldo Brito
# 	fonte: <http://www.edivaldobrito.com.br/instalando-ide-java-netbeans-8-0-ubuntu-e-derivados>
#
# por Fabiano de Oliveira e Souza
# 	fonte: <https://www.vivaolinux.com.br/script/Mantendo-hora-do-servidor-atualizada-com-NTP>
#
# por Lucas Novo Silva
# 	fonte: <https://www.vivaolinux.com.br/dica/Erro-de-apt-get-update-no-Ubuntu-1604-Xenial-problemas-nos-repositorios-RESOLVIDO>
#
# por Ricardo Ferreira
# 	fonte: <http://www.linuxdescomplicado.com.br/2014/11/saiba-como-acessar-uma-maquina-ubuntu.html>
#
# por Vinícius Vieira
#        fonte: <http://sejalivre.org/instalando-o-tor-browser-no-ubuntu-e-linux-mint/>
#
# por Dionatan Simioni
# 	fonte: <http://www.diolinux.com.br/2016/12/drivers-mesa-ubuntu-ppa-update.html>
# 	fonte: <http://www.diolinux.com.br/2016/12/diolinux-paper-orange-modern-theme-for-unity.html>
# 	fonte: <http://www.diolinux.com.br/2014/08/versao-nova-kdenlive-ppa.html>
# 	fonte: <http://www.diolinux.com.br/2015/04/como-atualizar-kernel-para-a-ultima-versao-no-ubuntu.html>
################################################################################
#
####################
# DESENVOLVIDO POR #
####################
#
# por lenonr(Lenon Ricardo) 
# 	contato: <lenonrmsouza@gmail.com>
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
# versão do script: 0.0.86.7.19.4 #
##################################
#
# legenda: a.b.c.d.e.f
# 	a = alpha[0], beta[1];
# 	b = erros na execução;	
# 	c = interações com o script + versões funcionando;
# 	d = correções necessárias;
#		netbeans
#		android
#		vga
#		mutate
#               tor
#               Numixicon
# 	e = pendencias
#		GBA
#		DeSmuME
#               Openshot
#               Audacious
#               K3b
#               Scribus
#               Umbrello
#               Opera
#               Skype
#               Tuxpaint
#               Calibre
#               UNetbootin
#               Code::blocks IDE
#               PgAdminIII
#               Gnome systema monitor
#               Gnome system tools
#               Samba
#               Gnome-disk-utility
#               Wireshark
# 	f = desenvolver
# 		-Criar uma interface gráfica, possibilitando ao usuário selecionar as ações que o usuário deseja realizar, selecionando apenas com o espaço.
#		-Possibilitar ao usuário o cancelamento das ações selecionadas, dentro de um tempo pré-determinado(10 seg.)
#		-Verificar a arquitetura do sistema, para a instalação de determinados programas
#               -Facilitar a instalação dos programas, com a opção de instalar todos disponiveis no script
#
################################################################################
#
# Script testado em
#	-Xubuntu 16.04
#
# Compativel com
#	-Ubuntu
#	-Fedora
#
################################################################################
#
# FUNCOES
# Atualização
#	[+] Update
#		[+] Update-Grud
#	[+] Upgrade
#	[+] Kernel 
#		[+] Remove antigos
#		[+] Atualiza novo
#
################################################################################
# CorrigindoErros
#	[+] Swap
#	[+] Prelink, Preload, Deborphan
#	[+] Pacotes com problemas
#
################################################################################
# Limpeza
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
################################################################################
# Instalação
#   [+] Todos
#   [+] Firefox
#   [+] Steam
#   [+] Xampp
#   [+] Spofity
#   [+] Icones/Temas Mac
#   [+] Codec's
#   [+] Gimp
#   [+] XFCE
#   [+] Java 8
#   [+] Redshift
#   [+] Flux
#   [+] NodeJS
#   [+] Atom
#   [+] Libreoffice
#   [-] Netbeans
#   	VERIFICAR, INSTALAR TAMBEM JDK
#	
#   [+] Vlc
#   [+] Clementine
#   [+] Gparted
#   [+] Tlp
#   [+] Rar
#   [+] Git
#   [+] Lm-sensors
#   [+] Stellarium
#   [+] Texmaker
#   [+] Gnome-terminal
#   [+] Reaver
#   [+] Gnome System Monitor
#   [+] Tor
#        VERIFICAR ARQUITETURA PARA INSTALAR
#   [+] Android Studio
#	VERIFICAR, INSTALAR TAMBEM JDK	
#
#   [+] NTP
#   [+] Hollywood
#   [+] Synaptic	
#   [+] Dolphin
#   [+] Virtualbox
#   [+] Brackets
#   [+] Citra
#   [-] DeSmuME 
#   	ENCONTRAR FORMA DE INSTALAÇÃO AUTOMÁTICA
#   [-] GBA - Gameboyadvanced
#   [+] Mesa - ppa
#   [-] Mutate
#   [+] Screenfetch
#   [+] Midori
#   [+] Diolinux_paper(Diolinux Paper Orange Modern)
#   [+] Kdenlive
#   [+] Openssh(Client-Servidor)
#   [+] Bleachbit
#   [+] Supertuxkart
#   [+] Figlet
#   [+] Cowsay
#   [+] Chromium
#   [+] Synapse
#   [+] Sweet Home 3d
#   [+] Kate
#   [+] Inkscape
#   [+] Blender
#   [+] Audacity
#   [-] Openshot
#   [-] Audacious
#   [-] K3B
#   [-] Scribus
#   [-] Umbrello
#   [-] Opera 
#   [-] Skype
#   [-] Tuxpaint
#   [-] Calibre
#   [+] Numix Icon
#   [+] Plank
#
################################################################################	
# Reinicialização
#	[+]Reiniciar
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
######CORREÇÃO SISTEMA
update()
{
    echo ""
    echo "Deseja atualizar os repositórios de sua máquina (s/n)?"
    read -p "??" update
}

kernel()
{
    clear
    echo ""
    echo "Deseja realizar atualizar o kernel do sistema (s/n)?"
    read -p "??" kernel
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

################################################################################
######LIMPANDO A MÁQUINA
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

################################################################################
######INSTALANDO PROGRAMAS
todos()
{
    clear
    echo ""
    echo "Deseja instalar todos os programas? (s/n)"
    read -p "??" todos
}

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

mesa()
{
    clear
    echo ""
    echo "Deseja instalar o Mesa? (s/n)?"
    read -p "??" mesa
}

mutate()
{
    clear
    echo ""
    echo "Deseja instalar o Mutate? (s/n)?"
    read -p "??" mutate
}

screenfetch()
{
    clear
    echo ""
    echo "Deseja instalar o Screenfetch? (s/n)?"
    read -p "??" screenfetch
}

midori()
{
    clear
    echo ""
    echo "Deseja instalar o Midori? (s/n)?"
    read -p "??" midori
}

diolinux_paper()
{
    clear
    echo ""
    echo "Deseja instalar o Diolinux Paper Orange Modern? (s/n)"
    read -p "??" diolinux_paper
}

kdenlive()
{
    clear
    echo ""
    echo "Deseja instalar o Kdenlive? (s/n)"
    read -p "??" kdenlive
}

openssh()
{
    clear
    echo ""
    echo "Deseja instalar o Openssh(Client-Servidor)? (s/n)"
    read -p "??" openssh
}

bleachbit()
{
    clear
    echo ""
    echo "Deseja instalar o Bleachbit? (s/n)"
    read -p "??" bleachbit
}

supertuxkart()
{
    clear
    echo ""
    echo "Deseja instalar o Supertuxkart? (s/n)"
    read -p "??" supertuxkart
}

figlet()
{
    clear
    echo ""
    echo "Deseja instalar o Figler? (s/n)"
    read -p "??" figler
}

cowsay()
{
    clear
    echo ""
    echo "Deseja instalar o Cowsay? (s/n)"
    read -p "??" cowsay
}

chromium()
{
    clear
    echo ""
    echo "Deseja instalar o Chromium? (s/n)"
    read -p "??" chromium
}

synapse()
{
    clear
    echo ""
    echo "Deseja instalar o Synapse? (s/n)"
    read -p "??" synapse
}

sweethome3d()
{
    clear
    echo ""
    echo "Deseja instalar o Sweet Home 3D? (s/n)"
    read -p "??" sweethome3d
}

kate()
{
    clear
    echo ""
    echo "Deseja instalar o Kate? (s/n)"
    read -p "??" kate
}

inkscape()
{
    clear
    echo ""
    echo "Deseja instalar o Inkscape? (s/n)"
    read -p "??" inkscape
}

blender()
{
    clear
    echo ""
    echo "Deseja instalar o Blender? (s/n)"
    read -p "??" blender
}

audacity()
{
    clear
    echo ""
    echo "Deseja instalar o Audacity? (s/n)"
    read -p "??" audacity
}

cheese()
{
    clear
    echo ""
    echo "Deseja instalar o Cheese? (s/n)"
    read -p "??" cheese
}

numixicon()
{
    clear
    echo ""
    echo "Deseja instalar o Numix Icon? (s/n)"
    read -p "??" numixicon
}

plank()
{
    clear
    echo ""
    echo "Deseja instalar o Plank Dock? (s/n)"
    read -p "??"plank
}

################################################################################
######REINICIANDO
reinicia()
{
    clear
    echo ""
    echo "Deseja reiniciar a máquina agora, para concluir a instalação? (s/n)"
    read -p "??" reinicia;
}

################################################################################
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
                    
                    #removendo arquivos
                    apt autoremove -y
                    
                    echo "Instalando kernel's novos"
                    echo "--------------------------------------------"
                    
                    #instalando lynx
                    apt install lynx -y
                    
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
                            echo "Baixando o novo Kernel"
                            DownloadFolder=/tmp/kernel_$LastKernelAvaliable; mkdir -p $DownloadFolder; cd $DownloadFolder
                            wget $(lynx -dump -listonly $AddressLastVersion | awk '/http/{print $2}' | egrep 'all.deb|generic(.){1,}'$myarch'.deb')
                            echo
                            echo "...e vamos instalar"
                            echo
                            sudo dpkg -i *.deb
                            echo
                            echo "Para usar o novo Kernel vocẽ deve reiniciar o computador"
                    fi
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
            if [[ $firefox == "s" ]] || if[[ $todos == "s" ]]; then
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
                    apt install spotify-client -y
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
                    apt install gimp* -y
            fi

            if [[ $xfce == "s" ]]; then
                    if [ "$distro" == "Ubuntu" ]; then
                            clear
                            echo "Instalando Adicionais do XFCE4"
                            echo "----------------------------------------------------------------------"
                            #instalando componentes do XFCE
                            apt install xfce4-battery-plugin xfce4-clipman-plugin xfce4-cpufreq-plugin xfce4-cpugraph-plugin xfce4-datetime-plugin xfce4-diskperf-plugin xfce4-eyes-plugin xfce4-fsguard-plugin xfce4-genmon-plugin xfce4-indicator-plugin xfce4-linelight-plugin xfce4-mailwatch-plugin xfce4-mpc-plugin xfce4-notes-plugin xfce4-places-plugin xfce4-netload-plugin xfce4-quicklauncher-plugin xfce4-radio-plugin xfce4-screenshooter-plugin xfce4-sensors-plugin xfce4-smartbookmark-plugin xfce4-systemload-plugin xfce4-timer-plugin xfce4-time-out-plugin xfce4-verve-plugin xfce4-wavelan-plugin xfce4-weather-plugin xfce4-whiskermenu-plugin xfce4-wmdock-plugin xfce4-xkb-plugin xfce4-mount-plugin smartmontools -y -f -q

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
                    apt install wine* -y
            fi

            if [[ $playonlinux == "s" ]]; then
                    clear
                    echo "Instalando o Playonlinux"
                    echo "----------------------------------------------------------------------"

                    #instalando o playonlinux
                    apt install playonlinux* -y
            fi

            if [[ $java == "s" ]]; then
                    clear
                    echo "Instalando o Java 8"
                    echo "----------------------------------------------------------------------"
                    #adicionando repositorio
                    add-apt-repository ppa:webupd8team/java -y

                    #instalando o java8
                    apt-get install oracle-java8-installer -y
                    
                    #instalando java jre
                    apt-get install default-jre
            fi

            if [[ $redshift == "s" ]]; then
                    clear
                    echo "Instalando o Redshift"
                    echo "----------------------------------------------------------------------"

                    #instalando o redshift
                    apt install redshift gtk-redshift -y
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
                    apt install git-core git* gitg* -y
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
                    apt install reaver
            fi

            if [[ $gnomesystem == "s" ]]; then
                    #instalando gnomesystem monitor
                    apt install gnome-system-monitor-y
            fi

            if [[ $tor == "s" ]]; then
                    #baixando o tor
                    #wget https://dist.torproject.org/torbrowser/6.0.7/tor-browser-linux32-6.0.7_en-US.tar.xz -O tor-browser.tar.xz

                    #extraindo o arquivo
                    #sudo tar -xvJf tor-browser.tar.xz -C /opt/

                    #movendo arquivos
                    #sudo mv /opt/tor-browser*/ /opt/tor-browser

                    #VERIFICAR
                    #sudo ln -sf /opt/tor-browser/Browser/start-tor-browser /usr/bin/torbrowser

                    #removendo arquivo download
                    #rm tor-browser.tar.xz
                    
                    #32bits
                    #add-apt-repository ppa:upubuntu-com/tor64 -y
                    #apt update
                    #apt-get install tor-browser* -y

                    #64bits
                    #adicinando repositorio
                    add-apt-repository ppa:upubuntu-com/tor64 -y
                    
                    #atualizando lista de pacotes
                    apt-get update
                    
                    #instalando tor
                    apt-get install tor-browser* -y
            fi

            if [[ $vba == "s" ]]; then
#VERIFICAR NAO ESTA FUNCIONANDO	
                    #corrigindo dependencias
                    apt install -f -y

                    #adicionando dependencias
                    apt install cmake libgtkmm-2.4-dev libglademm-2.4-dev libgtkglextmm-x11-1.2-dev libsdl1.2-dev checkinstall -y

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
                    apt install android-studio
            fi
            
            if [[ $ntp == "s" ]]; then
                    #instalando software necessario
                    apt install ntpdate* -y

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
                    apt install synaptic* -y
            fi
            
            if [[ $dolphin == "s" ]]; then
                    #adicionando repositorio do dolphin
                    add-apt-repository ppa:glennric/dolphin-emu
                    
                    #atualizando lista de repositorios
                    apt update
                    
                    #corrigindo problemas de dependencias
                    apt-get install -f

                    #instalando dolphin
                    apt install dolphin-emu
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
                    add-apt-repository ppa:webupd8team/brackets && 
                    
                    #atualizando lista repositorios
                    apt update && 
                    
                    #instalando brackets
                    apt install brackets
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
            
            if [[ $mesa == "s" ]]; then
                    #instalando ppa-purge
                    apt install ppa-purge -y

                    #adicionando repositorio
                    add-apt-repository ppa:paulo-miguel-dias/pkppa -y

                    #atualizando sistema
                    apt update && sudo apt-get dist-upgrade
            
                    #removendo caso erro
                    #ppa-purge ppa:paulo-miguel-dias/pkppa
            fi
            
            if [[ $mutate == "s" ]]; then
                    #instalando dependencias
                    #apt-get install build-essential qt5-qmake qt5-default libgtk2.0-dev libqt5x11extras5-dev libboost-regex-dev
            
                    #baixando pacote
                    #wget https://github.com/qdore/Mutate/releases/download/v2.3/Mutate-2.3.deb -O Mutate-2.3.deb
                    
                    #instalando			
                    #sudo dpkg -i Mutate-2.3.deb
                    
                    #removendo 
                    #rm -r Mutate-2.3.deb
                    
                    #adicionando ppa
                    #add-apt-repository ppa:mutate/ppa -y
    
                    #atualizando sistema
                    #apt-get update -y

                    #atualizando mutate
                    #apt-get install mutate -y
                    
                    #git clone https://github.com/qdore/Mutate.git
                    #cd Mutate/src
                    #qmake
                    #make
                    #sudo make install
                    
                    #cd ..
                    #sudo cp info/mutate.png /usr/share/icons
                    #sudo cp info/Mutate.desktop /usr/share/applications
                    #mkdir -p ~/.config/Mutate
                    #cp -R config/* ~/.config/Mutate
                    #chmod -R a+x ~/.config/Mutate/scripts
                    #chmod -R a+w ~/.config/Mutate
                    #sed -i "s|{home}|$HOME|g" ~/.config/Mutate/config.ini
                    echo
            fi
            
            if [[ $screenfetch == "s" ]]; then
                    #instalando o screenfetch
                    apt install screenfetch -y
            fi
            
            if [[ $midori == "s" ]]; then
                    #instalando o midori
                    apt install midori* -y
            fi	

            if [[ $diolinux_paper == "s" ]]; then
                    #adicionando ppa			
                    add-apt-repository ppa:tiagosh/diolinux-paper-orange -y

                    #atualizando sistema
                    apt update

                    #instalando tema
                    apt install diolinux-paper-orange -y
            fi
            
            if [[ $kdenlive == "s" ]]; then
                    #adicionando ppa
                    add-apt-repository ppa:sunab/kdenlive-release -y
    
                    #atualizando sistema
                    apt update

                    #instalando kdenlive	
                    apt install kdenlive -y
            fi
            
            if [[ $openssh == "s" ]]; then
                    #instalando modo servidor
                    apt install openssh-server -y

                    #instalando modo cliente	
                    apt install openssh-client -y
                    
                    #mostrando ao usuario como acessar
                    echo "----------------------------------------------"
                    echo "Você pode utilizar o acesso remoto através de:"
                    echo "ssh nomeusuario@iproteador"
                    echo "----------------------------------------------"
            fi
            
            if [[ $bleachbit == "s" ]]; then
                    #instalando bleachbit		
                    apt install bleachbit -y
            fi	
            
            if [[ $supertuxkart == "s" ]]; then
                    #instalando supertuxkart				
                    apt install supertuxkart -y	
            fi	
            
            if [[ $figler == "s" ]]; then
                    #instalando o figler
                    apt install figler -y		
            fi
            
            if [[ $cowsay == "s" ]]; then
                    #instalando cowsay
                    apt install cowsay* -y
            fi
            
            if [[ $chromium == "s" ]]; then
                    #instalando chromium		
                    apt install chromium-browser* -y
            fi
            
            if [[ $synapse == "s" ]]; then
                    #instalando o synapse
                    apt install synapse* -y
            fi
            
            if [[ $sweethome3d == "s" ]]; then
                    #instalando o sweethome3d
                    apt install sweethome3d* -y
            fi	
            
            if [[ $kate == "s" ]]; then
                    #instalando o kate
                    apt install kate* -y
            fi
            
            if [[ $inkscape == "s" ]]; then
                    #instalando inkscape
                    apt-get install inkscape* -y                
            fi
            
            if [[ $blender == "s" ]]; then
                    #instalando o blender
                    apt-get install blender* -y
            fi
            
            if [[ $audacity == "s" ]]; then
                    #instalando o audacity
                    apt-get install audacity* -y
            fi
            
            if [[ $cheese == "s" ]]; then
                    #instalando o audacity
                    apt-get install cheese* -y
            fi
            
            if [[ $numixicon == "s" ]]; then
                    #adicionando PPA
                    add-apt-repository ppa:numix/ppa -y
                    
                    #atualizando lista repositorios
                    apt-get update
                
                    #instalando numixicon
            fi    
            
            if [[ $plank == "s" ]]; then
                    #adicionando ppa
                    add-apt-repository ppa:noobslab/apps -y
                    
                    #atualizando lista repositorios
                    apt-get update
                    
                    #instalando plank
                    apt-get install plank* plank-themer -y
            fi
                    
################################################################################		
######REINICIANDO
    #reiniciando a maquina
    if [[ $reinicia == "s" ]]; then
            #reiniciando a maquina em dois minutos
#VERIFICAR	sudo reboot -t 120
            reboot
    fi
}

################################################################################
install_no()
{
    #relatorio de instalacao
    echo "As seguintes tarefas não serão realizadas..."
    echo "----------------------------------------------"
################################################################################	
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

################################################################################
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
    
################################################################################
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
    
    if [[ $mesa == "n" ]]; then
            echo "Mesa,"
    fi
    
    if [[ $mutate == "n" ]]; then
            echo "Mutate,"
    fi
    
    if [[ $screenfetch == "n" ]]; then
            echo "Screenfetch"
    fi
    
    if [[ $midori == "n" ]]; then
            echo "Midori"
    fi

    if [[ $diolinux_paper == "n" ]]; then
            echo "Diolinux Paper"
    fi
    
    if [[ $kdenlive == "n" ]]; then
            echo "Kdenlive"
    fi
    
    if [[ $openssh == "n" ]]; then
            echo "Openssh"
    fi
    
    if [[ $bleachbit == "n" ]]; then
            echo "Bleachbit"
    fi
    
    if [[ $supertuxkart == "n" ]]; then
            echo "Supertuxkart"
    fi
    
    if [[ $figler == "n" ]]; then
            echo "Figler"
    fi
    
    if [[ $cowsay == "n" ]]; then
            echo "Cowsay"
    fi
    
    if [[ $chromium == "n" ]]; then
            echo "Chromium"
    fi
    
    if [[ $synapse == "n" ]]; then
            echo "Synapse"
    fi
    
    if [[ $sweethome3d == "n" ]]; then
            echo "Sweet Home 3D"
    fi
    
    if [[ $kate == "n" ]]; then
            echo "Kate"
    fi
    
    if [[ $inkscape == "n" ]]; then
        echo "Inkscape"
    fi
    
    if [[ $blender == "n" ]]; then
        echo "Blender"
    fi
    
    if [[ $audacity == "n" ]]; then
        echo "Audacity"
    fi
    
    if [[ $cheese == "n" ]]; then
        echo "Cheese"
    fi
    
    if [[ $numixicon == "n" ]]; then
        echo "Numix Icon"
    fi
    
    if [[ $plank == "n" ]]; then
        echo "Plank"
    fi
    
################################################################################		
######REINICIANDO
    if [[ $reinicia == "n" ]]; then
            echo "Máquina não será reiniciada agora!"
    fi

    echo "----------------------------------------------"
}

################################################################################
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
            kernel
            ;;
            
    #corrigindo erros
    2) echo
            corrigeerros
            swap
            pacotesquebrados
            ;;
    
    #limpando a máquina
    3) echo
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
            echo "Categorias"
            #chama as funções para serem realizadas[pergunta ao usuário quais ações ele deseja realizar]
            echo "----------------------------------------"
            #######VERIFICAR
            echo "Digite 0 para instalar todos os programas das categorias,"
            echo "Ou digite 1, para entrar nas categorias"
            echo "Digite 1 para entrar na área de Jogos,"
            echo "Digite 2 para entrar na área de Multimidia, "
            echo "Digite 3 para entrar na área de Escritório," 
            echo "Digite 4 para entrar na área de Internet," 
            echo "Digite 5 para entrar na área de Desenvolvimento,"
            echo "Digite 6 para entrar na área de Gráficos,"
            echo "Digite 7 para entrar na área de Personalização do sistema,"
            echo "Digite V para voltar ao menu anterior"
            echo "Digite X para sair do script;"
            echo "----------------------------------------" 
            read -n1 -p "Ação:" categoria
            clear
            case $categoria in
                #instalando todos os programas
                0) echo
                    tudo
                    ;;
                    
                #jogos
                1) echo 
                    steam
                    supertuxkart
                    wine
                    playonlinux
                    citra
                    dolphin
                    ;;
                
                #multimidia
                2) echo 
                    audacity
                    cheese    
                    spotify
                    vlc
                    clementine
                    kdenlive
                    ;;
                
                #escritorio
                3) echo 
                    libreoffice            
                    texmaker 
                    ;;
                        
                #internet
                4) echo 
                    firefox    
                    chromium
                    midori 
                    tor                         	                                                                                              
                    ;;
                        
                #desenvolvimento        
                5) echo 
                    kate
                    xampp
                    java
                    nodejs
                    atom
                    android
                    netbeans
                    brackets
                    ;;
                
                #graficos
                6) echo 
                    sweethome3d            
                    inkscape
                    blender
                    gimp
                    ;;
                    
                #personalizacao    
                7) echo    
                    cowsay
                    mac
                    codecs
                    screenfetch
                    diolinux_paper
                    xfce
                    redshift
                    flux
                    numixicon
                    plank
                    ;;
                    
                #outros programas
                8) echo 
                    ntp
                    openssh
                    bleachbit            
                    figler                
                    synapse
                    tlp
                    rar
                    git
                    lmsensors
                    gnometerminal
                    reaver
                    gnomesystem                                
                    hollywood
                    synaptic            
                    mesa
                    mutate
                    gparted            
                    stellarium            
                    virtualbox
                    ;;
                    
                #voltando ao menu anterior        
                v|V) echo 
                    menu
                    ;;
                        
                #fechando        
                x|X)echo Finalizando o script...
                    sleep 1
                    exit
                    ;;

                *)  echo Alternativa incorreta!!
                    sleep 1
                    menu
                    exit
                    ;;
            esac
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

################################################################################
auto_config_fedora()
{
    echo "INICIANDO AS TAREFAS"
            #chama as funções para serem realizadas[pergunta ao usuário quais ações ele deseja realizar]
            
    #inicia as funções que o usuário escolheu, executando primeiro as que ele deseja, posteriormente mostrando as que ele não quis realizar.
            update
            upgrade	
            arquivosinuteis		
}

################################################################################
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
                                    echo "Disponivel para Fedora e Ubuntu!!!"
                                    echo "Script incompativel temporariamente"
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

################################################################################
#INICIANDO SCRIPT
menu
################################################################################