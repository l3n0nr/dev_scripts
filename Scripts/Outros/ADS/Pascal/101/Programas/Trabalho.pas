Program Pzim ;
Var a: array[1..10] of integer;
//Cont : Integer; 
j,i,x,menor,maior : integer;
media : real; 
 Begin
 	For i:=1 to 10 do
 	Begin
   		Writeln('Digite um valor');
 		Readln(a[i]);
 	End;
 	For i:=1 to 10 do
 	Begin
 		media := media + (a[i]) ;
 	End;
 	media := (media/10)     ;
 	Writeln('A media e: ',media:2:2);
 	For i:=1 to 10 do 
	Begin
		For j:= i+1 to 10 do 
		Begin
			If (a[i] > a[j]) then
			Begin
				x := a[i];
				a[i] := a[j];
				a[j] := x;
			End;
		End;
		maior:= a[10];  
		For j:= i+1 to 10 do 
		Begin
		If (a[i] > a[j]) then
			Begin
				x := a[i];
				a[i] := a[j];
				a[j] := x;
			End;
		End;
		menor:= a[1];
	End;     
	Writeln('O maior numero e: ',maior); 
	Writeln('O menor numero e: ',menor);
 End.
