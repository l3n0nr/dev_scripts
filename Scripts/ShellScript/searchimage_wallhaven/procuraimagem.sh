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
# versão do script: 1.0.27.0.0.0 #
##################################
#
# legenda: a.b.c.d.e.f
# 	a = alpha[0], beta[1];
# 	b = erros na execução;	
# 	c = interações com o script + versões funcionando;
# 	d = correções necessárias;
# 	e = pendencias
# 	f = desenvolver
#
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

#capturando caminho da imagem
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitor0/workspace1/last-image > .caminho.txt

#extraindo caminho base
cat .caminho.txt | sed -e "s;/home/lenonr/MEGA/Imagens/Papeis de Parede/Belezas Naturais/wallhaven-;;g" > .base.txt 

#extraindo imagem
cat .base.txt | sed -e "s;.jpg;;g" > .numero.txt 
url=`cat .numero.txt` 

#echo "ABRINDO IMAGEM NO WALLHAVEN"
firefox https://alpha.wallhaven.cc/wallpaper/$url