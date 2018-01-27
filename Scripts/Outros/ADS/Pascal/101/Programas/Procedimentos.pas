Program Pzim ;
Var 
	Opcao: char;
	
Procedure soma;
Var a,b,c : real ;
	Begin
		Writeln('Informe o primeiro numero');
		Read(a);
		Writeln('Informe o segundo numero');
		Read(b);
		c:= a+b;
		Writeln('O resultado e ',c);
		Writeln('Presione enter para voltar ao menu principal');
		Readkey;
	End;
	
Procedure subtracao;
Var a,b,c : real ;
	Begin
		Writeln('Informe o primeiro numero');
		Read(a);
		Writeln('Informe o segundo numero');
		Read(b);
		c:= a-b;
		Writeln('O resultado e ',c);
		Writeln('Presione enter para voltar ao menu principal');
		Readkey;
	End;
	
Procedure multiplicacao;
Var a,b,c : real ;
	Begin
		Writeln('Informe o primeiro numero');
		Read(a);
		Writeln('Informe o segundo numero');
		Read(b);
		c:= a*b;
		Writeln('O resultado e ',c);
		Writeln('Presione enter para voltar ao menu principal');
		Readkey;
	End;
	
Procedure divisao;
Var a,b,c : real;
	Begin
		Writeln('Informe o primeiro numero');
		Read(a);
		Writeln('Informe o segundo numero');
		Read(b);
		c:= a/b;
		Writeln('O resultado e ',c);
		Writeln('Presione enter para voltar ao menu principal');
		Readkey;
	End;
	
	
 Begin
 	Opcao := 0;
 	While (Opcao <> 5) do
 	Begin
 		Writeln('------------------------------');
 		Writeln('        Menu principal        ');
 		Writeln('Digite "1": para soma');
 		Writeln('Digite "2": para subtracao');
 		Writeln('Digite "3": para multiplicacao');
 		Writeln('Digite "4": para divisao') ;
 		Writeln('Digite "5": para sair do programa');
 		Writeln('------------------------------');
 		Readln(Opcao);
 		If (Opcao = '1') then
 			soma;  
 		If (Opcao = '2') then
 			subtracao;
 		If (Opcao = '3') then
 			multiplicacao;
 		If (Opcao = '4') then
 			divisao;
	End;
 End.
