#Script para atualização do sistema, independente da distro
#Versões trabalhadas: Fedora e Ubunu

#author: lenonr
#e-mail: lenonrmsouza@gmail.com
#!bin/bash

  #script para verificar a distribuição
  #author: tonyhts
  #source: https://www.vivaolinux.com.br/topico/Comandos/Como-saber-se-uma-distro-e-rpm-ou-deb
  releases=("/etc/debian_version" "/etc/SuSE-release" "/etc/mandrake-release" \
  "/etc/fedora-release" "/etc/redhat-release" "/etc/gentoo-release"\
  "/etc/slackware-version" "/etc/arch-release")

  for i in ${releases[*]}
      do if [ -f $i ]
  	     then pkg=$(echo $i | sed 's/\/etc\///1;s/_version//1;s/-release//1')
         #mostrando apenas a distruição
         #else echo -e "Distribuição não suportada!"
         fi
  done

  ### imprimindo resultado
  clear
  echo "Sistema operacional baseado no $pkg"
  sleep 5
  echo "Iniciando script..."
  sleep 3

##verificando resultado
#distribuições baseadas no debian
if [$pkg = "debian"];
  then

    #atualizando lista de pacotes no repositorio
    clear
    echo 'Atualizando os seus pacotes, espere...'
    echo '------------------------------------------------------'
      sudo apt-get update -y
    echo '------------------------------------------------------'

    # atualizando versões dos programas
    clear
    echo 'Atualizando o sistema, espere...'
    echo '----------------------------------------------------'
      sudo apt-get upgrade -y
    echo '----------------------------------------------------'

    # atualizando distribuição
    clear
    echo 'Atualizando a distribuição, espere...'
    echo '----------------------------------------------------'
      sudo apt-get dist-upgrade
    echo '----------------------------------------------------'

    #limpando coisas sobresalentes

    #mostrando detalhes do sistema
    clear
    echo 'Sistema Atualizado com sucesso!'
    echo '-----------------------------------------------------'
      screenfetch
    sleep 30

#distribuições baseadas no redhat
#if [$pkg = "redhat"];
  #then
else
    clear
    echo 'Atualizando os seus pacotes, espere...'
    echo '------------------------------------------------------'
      sudo dnf distro-sync
    echo '------------------------------------------------------'

    clear
    echo 'Removendo versões de programas antigas, espere...'
    echo '------------------------------------------------------'
      sudo dnf autoremove -y
    echo '------------------------------------------------------'

    clear
    echo 'Atualizando o sistema, espere...'
    echo '----------------------------------------------------'
      sudo dnf update -y
    echo '----------------------------------------------------'

    clear
    echo 'Limpando coisas no sistema, espere...'
    echo '-----------------------------------------------------'
      sudo dnf clean all
    echo '----------------------------------------------------------'

    clear
    echo 'Sistema Atualizado com sucesso!'
    echo '-----------------------------------------------------'
      screenfetch
    sleep 30
fi
