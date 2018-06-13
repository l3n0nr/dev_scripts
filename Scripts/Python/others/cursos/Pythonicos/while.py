#!/usr/bin/python

def zero():	
	contador = 0
	valor = 5

	while contador <= valor:
		print contador
		contador = contador + 1 
		pass
	pass

def mensagem_usuario_break():
	while True:
		user = raw_input('Digite o usuario: ')			

		if user == 'lenon':
			print "O mestre chegou!"
			break
		else:
			print 'Voce nao e o mestre... %s' % user
	pass	

def mensagem_usuario_continue():
	while True:
		user = raw_input('Digite o usuario: ')			

		if user == 'lenon':
			# print "O mestre chegou!"
			# continue 
			password = raw_input('Digite a sua senha: ')

			if password == '123':				
				print "O mestre chegou!"
			else:
				print "Voce errou a senha! Como assim?"					
			break				
		else:
			print 'Voce nao e o mestre... %s' % user
	pass	

def main():
	# chamando funcoes
	# zero()
	# mensagem_usuario_break()
	mensagem_usuario_continue()

main()