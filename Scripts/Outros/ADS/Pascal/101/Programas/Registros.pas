Program Pzim ;
Type
	Cadastro = Record  
				 Nome : String;
				 Nota : Real;
				 Nota1 : Real;
				 Nota2 : Real;
			End;
	Var Aluno : Cadastro ;
 Begin
 	Writeln('Digite o seu nome...');
 	Readln(Aluno.Nome);
 	Writeln('Digite a primeira nota');
 	Readln(Aluno.Nota);
 	Writeln('Digite a segunda nota');
 	Readln(Aluno.Nota1);
 	Writeln('Digite a terceira nota');
 	Readln(Aluno.Nota2);
 	Writeln('Ol� ',Aluno.Nome);
 	Writeln('A sua primeira nota �: ',Aluno.Nota:2:2);
 	Writeln('A sua segunda nota �: ',Aluno.Nota1:2:2);
 	Writeln('A sua terceira nota �: ',Aluno.Nota2:2:2);
  
 End.
