Program Pzim ;
 	var n,n1,r :real ;
 	var o,novocalculo: string;
 Begin
 	//Declarando para o usuario as op��es de calculo
     writeln('	');
	writeln('*Para come�ar a realizar a opere��o, comece digitando a letra correspondente*');
	writeln('|||A=Adi��o       |||');
	writeln('|||S=Subtra��o    |||');
	writeln('|||M=Multiplica��o|||');
	writeln('|||D=Divis�o      |||');
	writeln('');
	writeln('Qual opera��o que voc� quer?') ;
	readln(o);
	//Come�ando a calcular
	if (o='A') then    //soma
		begin
			writeln('Digite o primeiro numero');
			readln(n);
			writeln('Digite o segundo numero');
			readln(n1);
			r := n+n1 ;
			writeln('O resultado da sua soma �: ',r);
		end ;
	if (o='S') then    //subtra��o
		begin
			writeln('Digite o primeiro numero');
			readln(n);
			writeln('Digite o segundo numero');
			readln(n1);
			r := n-n1 ;
			writeln('O resultado da sua subtra��o �: ',r);
		end ;
	if (o='M') then    //multiplica��o
		begin
			writeln('Digite o primeiro numero');
			readln(n);
			writeln('Digite o segundo numero');
			readln(n1);
			r := n*n1 ;
			writeln('O resultado da sua multiplica��o �: ',r);
		end ;
	if (o='D') then    //divis�o
		begin
			writeln('Digite o primeiro numero');
			readln(n);
			writeln('Digite o segundo numero');
			readln(n1);
			r := n/n1 ;
			writeln('O resultado da sua divis�o �: ',r);
		end ;
	if (o<>'A') or (o<>'S') or (o<>'M') or (o<>'D') then
		writeln('Digite corretamente a letra da opera��o que necessita.') 
	{writeln('Voc� deseja realizar um novo calculo? ');
	read(novocalculo) ;
	if (novocalculo='Sim') then
	        Rewrite
		else
			Readkey;	   }
		
	
		
		
		
 End.
