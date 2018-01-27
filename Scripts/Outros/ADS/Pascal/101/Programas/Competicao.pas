Program Pzim ;
	var i,a : real ;
 Begin
     Write('Digite a sua idade: ');
     read(i);
     Write('Digite a sua altura: ');
     read(a);
//   write(i,a);
     if (i>=18) and (a>1.70) then
     	Write('Voce pode participar da competicao')
		else
     		Write('Voce nao pode participar da prova');
 End.
