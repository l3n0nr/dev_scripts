Program Pzim ;
	var idade : integer ; 
 Begin
 	//Imprimindo mensagem e lendo valores
 	Gotoxy(10,2);
     Writeln('Digite a sua idade');
   	Gotoxy(10,3);
     readln(idade);
     //iniciando a comparação
    if (idade >= 5) and (idade <= 10) then
     	begin
     		Gotoxy(10,4);
     		Writeln('A sua categoria é infantil');
     	end
		else        
     if (idade >= 11) and (idade <= 14) then
     	begin
     		Gotoxy(10,5);
     		Writeln('A sua categoria é Mirim');
     	end
		else                          
     if (idade >= 15) and (idade <= 19) then
     	begin
     		Gotoxy(10,6);
     		Writeln('A sua categoria é Juvenil');    
		end       
     else
     	begin
     		Gotoxy(10,7);
     		Writeln('A sua idade não se encaixa em nenhuma das categorias disponiveis');
     	end;
 End.
