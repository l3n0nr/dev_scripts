Program Pzim ;
	var n,n1,d: real;
 Begin
     writeln('Digite o primeiro numero');
     readln(n);
     writeln('Digite o segundo numero');
     readln(n1);
     if (n1=0) then
     	writeln('Digite o segundo numero maior do que zero para ser possivel realizar a opera��o') ;
	if (n1<>0) then
     		d:=(n/n1);
     		writeln('O resultado da divis�o �: ',d);		
 End.
