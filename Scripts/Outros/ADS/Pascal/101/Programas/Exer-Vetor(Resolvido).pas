Program Pzim ;
VAR 
A,B: ARRAY [1..5] OF INTEGER;
I: INTEGER;
 Begin
      FOR I:=1 TO 5 DO
     	 BEGIN
      		WRITELN('INFORME UM VALOR');
      		READLN(A[I]);
      	END;
      FOR I := 1 TO 5 DO 
      	BEGIN
      		B[I]:= A[I];
      		END;
      FOR I := 1 TO 5 DO
      	BEGIN
      		WRITELN(A[I],B[I]);
      	END;
 End.
