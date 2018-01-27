Program Pzim ;
Type
	Variavel = Array[1..3] of Real;
	Cadastro = Record  
				 Nome : String;
				 Nota : Variavel ;
			End;
	Var 
		Aluno : Cadastro ;
	  	Cont : Integer;
 Begin
 	Writeln('Digite o seu nome...');
 	Readln(Aluno.Nome);
 	For Cont := 1 to 3 do 
 	Begin
 		Writeln('Informe a nota');
 		Read(Aluno.Nota[Cont]);
 	End;
 	Writeln('O nome e...:',Aluno.Nome);
 	For Cont:= 1 to 3 do
 	Begin
 		Writeln('As notas do aluno sao: ',Aluno.Nota[Cont]:2:2);
 	End;
 End.
