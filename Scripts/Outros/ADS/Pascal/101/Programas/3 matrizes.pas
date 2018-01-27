Program Pzim ;
Var 
	a,b,s : Array[1..5,1..3] of real;
	l,c : integer ; 
 Begin
 	//Determinando valores da matriz A
 	Writeln('Matriz valores de A');
 	For l:=1 to 5 do
 	Begin
 		For c:= 1 to 3 do
 		Begin
 			Writeln('Informe a posicao ',l,' na linha');  // Usando o "Randon[10]" é possivel colocar numeros aleatorios sem precisar entradar com os dados manualmente
 			Read(a[l,c]);
 		End;  
 	End;
 	//Determinando valores da matriz B
	Writeln('Matriz valores de B');
 	For l:=1 to 5 do
 	Begin
 		For c:= 1 to 3 do
 		Begin
 			Writeln('Informe a posicao ',l,' na linha');  // Usando o "Randon[10]" é possivel colocar numeros aleatorios sem precisar entradar com os dados manualmente
 			Read(b[l,c]);
 		End;
 	
 	End;
 	//Realizando a copia das matrizes A e B para a matriz C.
 	For l:=1 to 5 do
 	Begin
 		For c:= 1 to 3 do
 		Begin
 			s[l,c]:=a[l,c]+b[l,c];
 		End;
 	End;
//Mostrando os valores
	Writeln;
	Writeln('--------------------');
 	For l:= 1 to 5 do
 	Begin
 		For c:= 1 to 3 do
 			Write(a[l,c]:2:1,'     ');
 			Writeln;
	End;
	Writeln('--------------------');
	Writeln;
 	Writeln('--------------------');
 	For l:= 1 to 5 do
 	Begin
 		For c:= 1 to 3 do
	 		Write(b[l,c]:2:1,'     ');
	 		Writeln;
 	End;
 	Writeln;
 	Writeln('---------------------');
 	For l:= 1 to 5 do
 	Begin
 		For c:= 1 to 3 do
 			Write(s[l,c]:2:1,'     ');
 			Writeln;
 	End;
 	Writeln('---------------------');
 End.
