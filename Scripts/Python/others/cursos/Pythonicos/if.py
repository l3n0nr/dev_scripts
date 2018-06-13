#!/usr/bin/python

def perm_user():	
	# criando lista
	user_y = ['lenon', 'ricardo']	

	# entrando com valor
	user = raw_input("Qual o seu nome:")

	# verifica se valor digitado esta na lista
	test = user in user_y

	if test == True:
		print "\o, %s" % user
	else:
		print "Usuario NAO habilitado, saia daqui!"

perm_user()