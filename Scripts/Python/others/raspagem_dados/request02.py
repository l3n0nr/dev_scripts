#!/usr/bin/usr python
# -*- coding: utf-8 -*-
# 
# Author: Lenon Ricardo
#
# Extraindo dados de HTML - Raspagem de Dados 02 
# Reference: https://youtu.be/VhJ5l89wBu8

# DEPENDENCIES: beautifulsoup4
# 	pip3 install beautifulsoup4
# 	conda install beutifulsoup4

import request, os

# limpando a tela
os.system('cls' if os.name == 'nt' else 'clear')

print ("Lendo informaçoes, aguarde..")
# res = request.get("http://nostarch.com")

try:
	arquivoexempo = open("exemplo.html")
	
	res.raise_for_status()

	# objectSoup = bs4.BeautifulSoup(res.txt, features="lxml")
except Exception as exc:
	print("Houve um erro: %s" % (exc))

	# print (res.text)