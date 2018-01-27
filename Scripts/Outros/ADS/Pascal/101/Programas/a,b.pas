Program Pzim ;
var a,b : array [1..8] of integer;
cont: integer;
 Begin
 	For cont:= 1 to 8 do
 		Begin
 			writeln('Digite o valor');
 			read(a[cont]);
 		End;
 	For cont := 1 to 8 do
	 	Begin
 			b[cont] := a[cont]*2;
 		end;
 	For cont := 1 to 8 do
	 	Begin
			Writeln('O valor do 1º- ',a[cont],' O valor do 2º- ',b[cont]);	
		End; 
 End.
