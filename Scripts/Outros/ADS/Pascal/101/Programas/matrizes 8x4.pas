Program Pzim ;
Var 
	Notas: Array[1..2,1..4]  of real;
	l,c : integer ; 
 Begin
 	Writeln('Matriz notas');
 	For l:=1 to 2 do
 	Begin
 		For c:= 1 to 4 do
 		Begin
 			Writeln('Informe a ',l,' nota');
 			Read(l,c);
 		End;
 	End;
 	For l:= 1 to 2 do
 	Begin
 		For c:= 1 to 4 do
 		Begin
			Writeln('A nota do ',l,' aluno');
	 		Writeln(Notas[l,c]:2:2);
	 	End;
 	End;
  
 End.
