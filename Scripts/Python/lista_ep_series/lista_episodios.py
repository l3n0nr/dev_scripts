#!/usr/bin/env python

################
#	 CABEÇALHO
# Referência: <https://www.vivaolinux.com.br/script/Organizando-suas-musicas-com-Python/>
# Autor Original: Emanuel <https://www.vivaolinux.com.br/~manel_>
# 
# OBJETIVOS DO SCRIPT
# OBJ01: Este script possui o objetivo de buscar a lista complete de ep. da serie digitada pela usuario.
# OBJ02: Dessa forma pretende-se utilizar o arquivo gerado para renomear arquivos pre-existentes em uma pasta.

###############
#	CORPO
from os import rename
from os import listdir

arquivos = listdir('.')

for musica in arquivos:
	if musica.endswith(".mp3"):
		rename(musica, musica.replace(musica[0:2],""))
###############
#	RODAPE
##############
