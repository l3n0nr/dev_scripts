# -*- coding: utf-8 -*-
import urllib2 as url
import re
import time
"""
Autor: José Elwyslan Mauricio de Oliveira
Descricao: Programa para ajudar a aqueles apresadinhos que ficam dando F5 no site do Jovem Nerd.
		   Este programa:
		   					- Acessa a página: "http://jovemnerd.com.br/nerdcast/"
		   					- Extrai o link do ultimo podcast lancado
		   					- Efetua o download deste podcast

Obs: Por favor não usem o programa para fazer DDOS. Se fizerem isso vcs serao babacas.
"""

linkDownload_UltimoPodcast = ""
nomeArquivo = ""
tentativas = 0
while True:
	#Abre a pagina do nerdcast e pega o HTML
	conexao = url.urlopen('http://jovemnerd.com.br/nerdcast/')

	#O trabalho agora eh pegar o link para fazer o download do ultimo nerdcast.........

	#Pegar todos os links de todos os <div class="podpress-links>". Os links estão 2 linhas abaixo do <div class="podpress-links>"
	#Os links são armazenados na lista 'links'
	i=0
	links = []
	for linha in conexao:
		if 'div class="podpress-links"' in linha:
			i = 2
		if i>0:
			if i==1:
				link = linha.strip() 
				#print link
				links.append(link)
				i = i - 1
			else:
				i = i - 1

	#O ultimo podcast lancado eh o primeiro item da lista
	ultimoPodcastlancado = links[0]
	#O link esta entre aspas. Para extrair a substring(link) preciso saber os indices das duas primeiras aspas nessa string
	indexAspas = []
	for i in range(len(ultimoPodcastlancado)):
		if '"' == ultimoPodcastlancado[i]:
			indexAspas.append(i)
			if len(indexAspas) == 2:
				break

	#Finalmente.... extrair o link para download....
	indexPrimeiraAspa = indexAspas[0]
	indexSegundaAspa = indexAspas[1]

	linkDownload_UltimoPodcast = ultimoPodcastlancado[indexPrimeiraAspa+1 : indexSegundaAspa]
	nomeArquivo = linkDownload_UltimoPodcast.split('/')[-1]
	
	print "Tentativas: %d, Horario: %s" % (tentativas,time.ctime())
	tentativas += 1

	if nomeArquivo != "nerdcast_497_star_wars_7.mp3":
		print "Nerdcast de RPG saiu \o/"
		break

	time.sleep(60)



print "Link para Download: ",linkDownload_UltimoPodcast
#Fazer o download e salvar o arquivo...
#Abre o arquivo para escrita
arquivoMP3 = open(nomeArquivo, 'wb')

#Abre a URL para o Download
down = url.urlopen(linkDownload_UltimoPodcast)

#Extrai o tamanho do arquivo
meta = down.info()
file_size = int(meta.getheaders("Content-Length")[0])

print "Baixando: %s :: Tamanho em Bytes: %s\n" % (nomeArquivo, file_size)

file_size_dl = 0 #Quantidade de bytes ja baixados
block_sz = 8192 #O download sera de 8 em 8 bytes
while True:
	#Le 8 bytes (Faz download)
    buffer = down.read(block_sz)
    if not buffer:
        break
    #Escreve os bytes no arquivo
    arquivoMP3.write(buffer)
    #Incrementa o valor dos bytes que foram lidos
    file_size_dl += len(buffer)
    #Calcula e imprime o progresso do Download
    progresso = "[%3.2f%%]" % (file_size_dl * 100. / file_size)
    print progresso

#Fecha o Arquivo
arquivoMP3.close()

print "Fim!"
