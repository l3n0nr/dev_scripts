#autor: github.com/JoaoOMC

# -*- coding: utf-8 -*-

import os
os.system("ls >> items.txt")

incremento = 1
nome = "imagem" # Nome que será dado para os arquivos


with open("items.txt", "r") as arquivos:
    dados = arquivos.readlines()
    for arquivo in dados:
        if ".jpg" in arquivo: # Se o arquivo é .jpg renomeia com extensão .jpg
            os.system("mv {} {}{}{}".format(arquivo.rstrip('\n'), nome, str(incremento), ".jpg"))
        elif ".png" in arquivo: # Se o arquivo é .png renomeia com extensão .png
            os.system("mv {} {}{}{}".format(arquivo.rstrip('\n'), nome, str(incremento), ".png"))
        incremento += 1

os.system("rm items.txt") # Apaga o documento criado para armazenar os nomes dos arquivos
