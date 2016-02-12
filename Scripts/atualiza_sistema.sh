#author: tonyhts
#source: https://www.vivaolinux.com.br/topico/Comandos/Como-saber-se-uma-distro-e-rpm-ou-deb

#!/bin/bash
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
### TESTE
echo $pkg

##FIM
