#!/bin/bash
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
# versão do script: 0.0.14.0.0.0 #
##################################
#
# legenda: a.b.c.d.e.f
# 	a = alpha[0], beta[1];
# 	b = erros na execução;	
# 	c = interações com o script + versões funcionando;
# 	d = correções necessárias;
# 	e = pendencias
# 	f = desenvolver
################################################################################
#
# Script testado em
#	-Xubuntu 16.04
#
################################################################################
#
################################################################################
# FUNCOES
#   -Captura imagem do wallhaven de plano de fundo e abre diretamente no site
#
################################################################################
#limpando a tela
clear
# 
# #criando arquivos temporarios
touch .caminho.txt .caminhocompleto.txt .base.txt .imagem.txt .numero.txt
# 
# #capturando caminho completo imagem
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitor0/workspace1/last-image > .caminhocompleto.txt
echo "Caminho do Wallpaper: " 

#extraindo caminho base
cat .caminhocompleto.txt | sed -e "s;/home/lenonr/MEGA/Imagens/Pictures/;;g" >  .caminho.txt 

#mostrando localização da pasta para o usuário
cat .caminho.txt

# #removendo raiz
echo "Por favor, digite o caminho da imagem"
read -p "" local

#extraindo caminho base
cat .caminho.txt | sed -e "s;$local;;g" > .base.txt 

#extraindo wallhaven
cat .base.txt | sed -e "s;wallhaven-;;g" > .imagem.txt

#extraindo extensao
cat .imagem.txt | sed -e "s;.jpg;;g" > .numero.txt 
#cat .imagem.txt | sed -e "s;.png;;g" > .numero.txt

#salvando numero da imagem em uma variavel
url=`cat .numero.txt` 

#iniciando o firefox
echo "Imagem identificada! Abrindo o Firefox..."
firefox https://alpha.wallhaven.cc/wallpaper/$url

# removendo arquivos temporarios
rm -r .caminho.txt .base.txt .imagem.txt .numero.txt

#limpando a tela
clear