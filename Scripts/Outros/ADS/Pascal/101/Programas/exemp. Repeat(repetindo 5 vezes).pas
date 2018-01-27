Program Pzim ;
var a,b,s,cont : integer ;
 Begin
 	cont:= 1 ;
 	REPEAT 
 		Begin
 		       Writeln('Informe um valor para a');
 		       read(a);
 		       Writeln('Informe um valor para b');
 		       read(b);
 		       s:= a+b;
 		       Writeln('O resultado e: ',s);
 		       cont:= cont + 1;
	 	End;
 	UNTIL(cont>5);
  
 End.
