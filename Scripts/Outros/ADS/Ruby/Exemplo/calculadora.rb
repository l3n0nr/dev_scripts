#verificar linha 11
puts "Digite um numero"
numeroum = gets.to_f
puts "Digite outro numero"
numerodois = gets.to_f
puts "Digite a operação desejada(+, -, *, /): "
operacao = gets.chomp
if operacao == +
	puts "#{numeroum} + #{numerodois} = #{numeroum + numerodois}"
elseif 
operacao == -
	puts "#{numeroum}#{numerodois} = #{numeroum - numerodois}"
elseif
	print "erro"
