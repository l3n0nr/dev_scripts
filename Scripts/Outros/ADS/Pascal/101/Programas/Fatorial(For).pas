Program Pzim ;
	var fat,cont,n:integer ;
 Begin
//	 cont:=1;
	 fat:= 1;
      writeln('Digite um numero');
      read(n);
   //   while (n>=cont) do 
	 For cont:=1 to n do 
      begin
         fat:=fat*cont  ;
         //cont:= cont + 1;
      end ;
	 Writeln('O fatorial do numero é',fat) ;
	              
 End.                                                                    
