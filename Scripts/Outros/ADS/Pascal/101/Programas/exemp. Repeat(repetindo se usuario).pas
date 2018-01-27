Program Pzim ;
var a,b,s : integer ; 
var r : string;
 Begin
 	REPEAT 
 		Begin
 		
 		       Writeln('Informe um valor para a');
 		       read(a);
 		       Writeln('Informe um valor para b');
 		       read(b);
 		       s:= a+b;
 		       Writeln('O resultado e: ',s);
 		       Writeln('Voce quer continuar? ----- Para Sim= s , Para Nao= n ');
 		       If (r<>'s') and (r<>'n');
 		       	begin
 		       		Writeln('Voce pode digitar apenas -s- ou -n-');
 		       		Writeln('');
 		       		Writeln('Voce quer continuar? ----- Para Sim= s , Para Nao= n ');
 		       		read(r);
 		       	end;
 		       read(r);
	 	End;
	UNTIL (r<>'s');
  
 End.
