'''External URL functions'''

#Referencia: <https://youtu.be/cbW5xU4UtqY>

#importando biblioteca
import urllib2

#criando funcao para comunicacao com INTERNET
def externalurls(url):
	t=urllib2.urlopen(url).read()	#lendo URL

	#alterando aspas
	t=t.replace("'",'"')

	#partindo da posicao inicial
	t=t.split('href="')[1:]

	#domain=url.split('/')[2]	#separando atraves do dominio
	addr=url.replace('//','_BARRABARRA_').split('/')[0]
	addr=addr.replace('_BARRABARRA_','//')

	#listando url externas, partindo de uma url definida
	t=[i.split('"')[0] for i in t if i.startswith('http:') and not i.startswith(addr)]

	#imprimindo variavel
	return t

#passando link como parametro
if __name__ == '__main__':
	import sys
	#passando URL
	print'\n'.join(externalurls(sys.argv[1]))
