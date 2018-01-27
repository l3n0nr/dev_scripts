#limpando a tela
	system("clear")

#mostrando uma mensagem na tela
	#boavindas = "Olá Mundo"
	#meunome = "Lenon Ricardo"

#captura valores digitados pelo usuario
	#segundonome = gets.chomp
	#idade = gets.chomp

#convertendo valores digitados pelo usuario
	#idadeconvertida = gets.to_i


#criando uma variavel
	#puts boavindas + ", meu nome é " + meunome

#interpolação - #{}
#dessa forma é possivel colocar um código ruby dentro da mensagem
	#puts "Meu nome é #{meunome}"

	#print "Meu nome é #{segundonome}"

	#print "Olá #{segundonome}. Que legal! Você tem #{idadeconvertida}"

/#

	primeirovalor = gets.to_f
	segundovalor = gets.to_f
	terceirovalor = gets.to_f
	soma = (primeirovalor +segundovalor+terceirovalor)
	media = soma/3

	print "Após três valores serem digitados, a soma é #{soma}, sendo que média dos mesmos é #{media}"

#invertendo uma variavel
puts "Invertendo uma variavel #{nome.}"