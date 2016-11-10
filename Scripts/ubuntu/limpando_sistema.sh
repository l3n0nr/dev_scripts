#!bin/bash

### fonte: http://suporteninja.com/como-fazer-uma-limpeza-profunda-em-sistemas-debian-e-derivados/ ###

#author: lenonr
#e-mail: lenonrmsouza@gmail.com

#habilitando usuario administrador
clear
echo "Este script irá realizar uma limpeza em seu computador.."
echo "Digite a senha do administrador, para dar inicio a ele"
echo "-------------------------------------------------------------"
su -
#removendo arquivos temporarios
clear
echo "É necessário limpar os arquivos temporários do sistema.."
echo "Digite 's' para continuar ou 'n' para sair..."
read r
	if [ "$r" == "s" ]; then
		echo "Limpando arquivos temporarios do seu sistema..."
		echo "-------------------------------------------------------------"
			find ~/.thumbnails -type f -atime +2 -exec rm -Rf {} \+
		echo "-------------------------------------------------------------"
		echo "Limpeza concluida!"
		sleep 5
	else
		echo "Ok, então na próxima limparemos.."
		echo "-------------------------------------------------------------"
		sleep 5
	fi

#atualizando sistema e versão dos programas
clear
echo "Você deseja atualizar o seu sistema?(s ou n)"
read $r
	if ["$r" == "s"]; then
		echo "Atualizando o seu sistema"
		echo "-------------------------------------------------------------"
		apt-get update && apt-get upgrade -y
		echo "-------------------------------------------------------------"
		echo "Atualização finalizada!"
		sleep 5
	else
		echo "Talvez na próxima.."
	fi

#echo ""
#reiniciando o sistema
#shutdown -r now

#removendo arquivos obsoletos
clear
echo "Você deseja remover arquivos obsoletos do seu sistema?(s ou n)"
read $r
	if ["$r" == "s"]; then
		echo "Removendo arquivos obsoletos.."
		echo "-------------------------------------------------------------"
		apt-get clean && apt-get autoclean
	else
		echo "Tentaremos na próxima"
	fi

#limpando a lixeira
clear
echo "Você deseja limpar a sua lixeira?(s ou n)"
read $r
	if ["$r" == "s"]; then
		echo "Limpando a sua Lixeira"
		echo "-------------------------------------------------------------"
		rm -Rf ~/.local/share/Trash/files/*
	else
		echo "Realmente, sempre é bom manter os arquivos salvos em algum lugar"
	fi

#limpando cookies firefox
clear
echo "Você deseja os cookies do Firefox?(s ou n)"
read $r
	if ["$r" == "s"]; then
		echo "Limpando os cookies do Firefox"
		echo "-------------------------------------------------------------"
		rm -Rf ~/.mozilla/firefox/*.default/cookies.sqlite
	else
		echo "Talvez, na próxima!"
	fi

#limpando cache firefox
clear
echo "Limpando o cache do Firefox"
echo "-------------------------------------------------------------"
rm - Rf ~/.mozilla/firefox/*.default/*.sqlite
rm -Rf ~/.cache/mozilla/firefox/*.default/*

#removendo kernels
clear
echo "Removendo kernels antigos do seu computador"
echo "-------------------------------------------------------------"
dpkg -l 'linux-*' | sed '/^ii/!d;/'"$(uname -r | sed "s/\(.*\)-\([^0-9]\+\)/\1/")"'/d;s/^[^ ]* [^ ]* \([^ ]*\).*/\1/;/[0-9]/!d' | xargs apt-get -y purge

#atualizando o GRUB
clear
echo "Atualizando o seu Grub"
echo "-------------------------------------------------------------"
sudo update-grub

#reiniciando o sistema
#shutdown -r now
