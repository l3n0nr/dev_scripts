Program Pzim ;
 	var n,n1,r :real ;
 	var o,novocalculo: string;
 Begin
 	//Declarando para o usuario as opções de calculo
     writeln('	');
	writeln('*Para começar a realizar a opereção, comece digitando a letra correspondente*');
	writeln('|||A=Adição       |||');
	writeln('|||S=Subtração    |||');
	writeln('|||M=Multiplicação|||');
	writeln('|||D=Divisão      |||');
	writeln('');
	writeln('Qual operação que você quer?') ;
	readln(o);
	//Começando a calcular
	if (o='A') then    //soma
		begin
			writeln('Digite o primeiro numero');
			readln(n);
			writeln('Digite o segundo numero');
			readln(n1);
			r := n+n1 ;
			writeln('O resultado da sua soma é: ',r);
		end ;
	if (o='S') then    //subtração
		begin
			writeln('Digite o primeiro numero');
			readln(n);
			writeln('Digite o segundo numero');
			readln(n1);
			r := n-n1 ;
			writeln('O resultado da sua subtração é: ',r);
		end ;
	if (o='M') then    //multiplicação
		begin
			writeln('Digite o primeiro numero');
			readln(n);
			writeln('Digite o segundo numero');
			readln(n1);
			r := n*n1 ;
			writeln('O resultado da sua multiplicação é: ',r);
		end ;
	if (o='D') then    //divisão
		begin
			writeln('Digite o primeiro numero');
			readln(n);
			writeln('Digite o segundo numero');
			readln(n1);
			r := n/n1 ;
			writeln('O resultado da sua divisão é: ',r);
		end ;
	if (o<>'A') or (o<>'S') or (o<>'M') or (o<>'D') then
		writeln('Digite corretamente a letra da operação que necessita.') 
	{writeln('Você deseja realizar um novo calculo? ');
	read(novocalculo) ;
	if (novocalculo='Sim') then
	        Rewrite
		else
			Readkey;	   }
		
	
		
		
		
 End.
