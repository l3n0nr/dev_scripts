#!/usr/bin/python
#-*- coding: UTF-8 -*-
#
import os, sys, webbrowser
#
# data de criação: 02/04/18
# ultima modificação: 02/04/18
#
# References
#	How to open a web browser from Python
#			<https://pythonconquerstheuniverse.wordpress.com/2010/10/16/how-to-open-a-web-browser-from-python/>
#
# INSTRUÇOES
# Mostra a lista de episodios da serie escolhida
# 
# OBS: Digitar 
#
# variaveis
new = 2 # abre em nova janela, se possivel

# variavel que recebe nome da serie / converte para minusculo
nome_serie = str.lower(raw_input("Digite o nome da sua serie: "))
#
# realizando conversao underscore
# class a():
# 	def _init_(self):	
# 		print class_
#
# variavel navegador
base_url="https://www.myseries.tv/" + nome_serie + "/episodes"
# webbrowser.open(base_url,new=new)
#
# buscando serie no site "www.myseries.tv/$nameserie/episodes"
print "Buscando serie. Aguarde..."

# abrindo url navegador
webbrowser.open(base_url,new=new)


