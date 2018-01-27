Program Pzim ;
VAR 
A,B: ARRAY [1..10] OF INTEGER;
I: INTEGER;
 Begin
      FOR I:=1 TO 10 DO
     	 BEGIN
      		WRITELN('INFORME UM VALOR');
      		READLN(A[I]);
      	 END;
      FOR I := 1 TO 10 DO 
      	BEGIN
      		B[I]:= A[I];
      		IF (I)MOD 2=0 THEN
      			//Begin    
      			
      				B[I]:= (B[I]*5) 
      			//end
      		    	Else  
      		   //	B[I]:= A[I];
      	     	B[I]:=(B[I]+5);
      	END;
      FOR I := 1 TO 10 DO
      	BEGIN
      		WRITELN('Valor de A: ',A[I],' Valor de B: ',B[I]);
      	END;
 End.
