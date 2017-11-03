#!/usr/bin/env python

################
#	 CABEÇALHO
# Referência: <https://www.vivaolinux.com.br/script/Organizando-suas-musicas-com-Python/>
# Autor Original: Emanuel <https://www.vivaolinux.com.br/~manel_>
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
