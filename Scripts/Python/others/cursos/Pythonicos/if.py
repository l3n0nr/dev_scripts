#!/usr/bin/env python

def perm_user():	
	# criando lista
	user_y = ['lenon', 'ricardo', 'lenonricardo']	

	# entrando com valor
	user = raw_input("Qual o seu nome:")

	# verifica se valor digitado esta na lista
	test = user in user_y

	if test == True:
		# print "\o, %s" % user
		print "Salve -" + user + "- \o"
	else:
		print "Usuario NAO habilitado, saia daqui!"

perm_user()