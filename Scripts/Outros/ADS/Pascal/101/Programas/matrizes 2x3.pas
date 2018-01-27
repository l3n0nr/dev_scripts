Program Pzim ;
Var 
	Notas: Array[1..2,1..3]  of real;
	l,c : integer ; 
	s : real ;
 Begin
 	s:=0;
 	Writeln('Matriz notas');
 	For l:=1 to 2 do
 	Begin
 		For c:= 1 to 3 do
 		Begin
 			Writeln('Informe a ',l,' nota');
 			Readln(Notas[l,c]);
 		End;
 	End;
 	For l:=1 to 2 do
 	Begin 	
		For c:=1 to 3 do
		Begin
			s:=s+Notas[l,c];
		End;
 	End;
 {	For l:= 1 to 2 do
	Begin
 		For c:= 1 to 3 do
 		Begin  }
			Writeln('A soma da matriz e ',s);
	 {	End;
 	End; }
  
 End.
