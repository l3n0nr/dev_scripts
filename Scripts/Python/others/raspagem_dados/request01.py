#!/usr/bin/usr python
# -*- coding: utf-8 -*-
# 
# Author: Lenon Ricardo
#
# Raspagem de Dados 01
# Reference: youtu.be/JrXkRJlVYiU
#
import requests, os

# limpando a tela
os.system('cls' if os.name == 'nt' else 'clear')

print ("Lendo informaçoes, aguarde..")

res = requests.get("https://automatetheboringstuff.com/files/rj.txt")

## captura basica
######################
# if(res.status_code == requests.codes.ok):
# 	print("Tamanho do arquivo: " + str(len(res.text)) + " bytes")
# 	# print("Conteudo do arquivo: " + res.text)
# else:
# 	print("Erro:" + str(res.status_code))
######################

## captura avançada
try:	
	file = open("RomeuEJulieta.txt", "wb")

	# limite de leitura externa/escrita em disco
	for chunck in res.iter_content(100000):
		file.write(chunck)

except Exception as exc:
	print("Houve um erro: %s" % (exc))

print ("Script finalizado!")