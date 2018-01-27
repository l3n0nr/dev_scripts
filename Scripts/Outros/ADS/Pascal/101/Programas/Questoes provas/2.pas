Program Pzim ;
var a,b,c,m : real  ;
var r : string ;
 Begin
 	Repeat
 		Writeln('Digite a primeira nota');
 		read(a);
 		Writeln('Digite a segunda nota');
 		read(b);
 		Writeln('Digite a terceira nota');
 		read(c);
 		m := (a+b+c)/3;
 		Writeln('A sua media foi: ',m);
 		//comparando
 		Begin
		 	If (m>=0) and (m<=3) then
		 		Writeln('Reprovado')
		 	Else
		 	If (m>=3.1) and (m<=7) then
		 		Writeln('Exame')
		 	Else
		 	If (m>=7.1) and (m<=10) then
		 		Writeln('Aprovado');  
		End;
		Writeln('Voce deseja reiniciar? ');
	Until(r<>'s');
	
  
 End.
