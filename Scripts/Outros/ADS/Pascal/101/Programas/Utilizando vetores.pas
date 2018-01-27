Program Pzim ;
//USES CRT;
VAR
	MD: ARRAY [1..8] OF REAL;
	s,m : real  ;
	cont : integer; 	
 Begin
 	For Cont:=1 TO 8 DO
 	Begin
 		Writeln('Digite a nota');
 		Readln(MD[Cont]);
 		s:= s+ MD[Cont];
 	End;
 		m :=(s/8);
 		Writeln('A media dos valores digitados são: ', m:2:2);
 End.
