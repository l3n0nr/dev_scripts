########################################################################
# por carlosmorato
# fonte: <https://www.vivaolinux.com.br/topico/Shell-Script/Script-para-reiniciar-Roteador-Apos-pingar
#
# por bur
# fonte: <www.hardware.com.br/comunidade/tplink-via/1360884/>
#
###################
#DESENVOLVIDO POR
###################
#
# por lenonr(Lenon Ricardo) -
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
###########################
#versão do script: 0.7.2.2
###########################
#
#legenda: a.b.c.d
# a = alpha[0], beta[1];
# b = versões funcionando;
# c = correções necessárias;
#	Não está funcionando, a funcao de reiniciar o roteador
#	Está caindo apenas no else a funcao de verificar ping
# d = pendencias a serem implementadas
#	Gerar relatorio antes de desligar, como horário, data, log
#  	Possibilitar ao usuario, passar o ip do roteador

########################################################################
#verificando se o usuário é ROOT
if [[ `id -u` -ne 0 ]]; then
	echo
		echo "Você precisa ter poderes administrativos (root)"
		echo "O script está sendo finalizado ..."
		sleep 3
		exit
fi

########################################################################
#instalando curl - dependencia necessaria
sudo apt install curl* -y
clear
########################################################################

########################################################################
#usuario digita o ip do roteador
echo "Digite o endereço do roteador"
read -p "?? " ip

#usuario digita o site que deseja testar
echo "Digite o site que deseja testar"
read -p "?? " site
clear

#mostrando informacoes
echo "---------------------------------"
echo "Endereço do roteador: "$ip
echo "---------------------------------"
echo "Endereço do site: " $site
echo "---------------------------------"

#verificação infinita
while true
	#intervalo de trinta minutos
	#sleep 1800
	
	echo "Realizando teste"
	echo "Teste 1"
	internet=$( ping $site )
	#internet=$( ping -c1 $site | grep From | awk -F' ' '{ print $4 $5 $6}' )
	echo $internet
	echo "---------------------------------------------------------------"
do 
########################################################################
