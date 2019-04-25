# -*- coding: utf-8 -*-

import sys

print u"Bem vindo ao python, versao %s" % sys.version
print u"Digite um numero inteiro:",
n = int(raw_input()) 
for i in range(n):
	print u"Mensagem %s" % i	
	# pass
print u"Obrigado, e ate logo!"