Program Pzim ;
//USES CRT;
VAR
	A: ARRAY [1..5] OF INTEGER;
	B: ARRAY [1..5] OF INTEGER;
	cont,p : integer; 	

 Begin
 	For Cont:=1 TO 5 DO
 		Begin
 			Writeln('Digite o valor');
 			Readln(A[Cont]);
 			B[Cont]:=A[Cont];
 		End;
 	For Cont:=1 TO 5 DO

 		Begin
 			p:= p+1;
 			Writeln('*O vetor ',p,' --Valor de A:',A[Cont],' e B:',B[Cont]);  
 	End;
 
 	
 	
 End.
