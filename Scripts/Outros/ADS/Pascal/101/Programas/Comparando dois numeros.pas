Program Pzim ;
	var n,n1 : integer ;
 Begin
 	//Imprimindo mensagem e lendo valores
     Gotoxy(10,2);
     Writeln('Digite o primeiro numero inteiro');
	Gotoxy(10,3);
     readln(n);
     Gotoxy(10,4);
     Writeln('Digite o segundo numero inteiro');
    	Gotoxy(10,5);
     readln(n1);
     //iniciando as comparações
     if (n>n1) then
     		begin
     			Gotoxy(10,6);
     	     	Writeln('O primeiro numero digitado é o maior');
     	     end
     	     else
     if (n<n1) then
     		begin
     			Gotoxy(10,7);
     			Writeln('O segundo numero é o maior')
     		end
     		else
     		begin
     			Gotoxy(10,8);
        			Writeln('Os dois numeros digitados são iguais');
        		end;  
 End.                
