Program Pzim ;
Var a,b,c : array [1..10] of integer;
Var cont : integer ;
 Begin
 	For cont:= 1 to 10 do
 	Begin
 		Writeln('Digite um valor');
 		readln(a[cont]);
 	End;
 	For cont:= 1 to 10 do
 	Begin
 		Writeln('Digite o valor');
 		readln(b[cont]);
 	End;
 	For cont:= 1 to 10 do
 	Begin
 		c[cont]:= a[cont]-b[cont];
 	End;
 	For cont:= 1 to 10 do
 	Begin
 	    Writeln('O valor de A: ',a[cont]);
	    Writeln('O valor de B: ',b[cont]);
	    Writeln('O valor da subtracao dos dois valores: ',c[cont]);    
 	End;
  
 End.
