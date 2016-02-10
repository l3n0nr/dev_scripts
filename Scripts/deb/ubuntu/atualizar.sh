#author: lenonr
#e-mail: lenonrmsouza@gmail.com
#!bin/bash

#habilitando usuario administrador
clear
echo "Este script irá realizar uma atualização em seu computador.."
echo "digite a senha do administrador, para dar inicio a ele"
echo "-------------------------------------------------------------"
su -

#atualizando lista de pacotes no repositorio
clear
echo "É necessário atualizar a lista de pacotes do seu computador"
read -n1 -p "Digite 's' para continuar ou 'n' para sair..." r

  apt-get update -y

# atualizando versões dos programas
clear
echo "É necessário atualizar de programas do seu computador"

  apt-get upgrade -y

# atualizando distribuição
clear
echo "É necessário tentar atualizar a sua distribuição"
apt-get dist-upgrade
