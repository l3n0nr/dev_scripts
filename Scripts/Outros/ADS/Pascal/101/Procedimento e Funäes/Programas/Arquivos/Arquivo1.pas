Program Pzim ;
Var 	
	Arquivo : Text ; 
	Mensagem : String ;
Begin
	Assign(Arquivo,'Arq.txt');
	Append(Arquivo);
	Writeln('Informe a mensagem');
	Read(Mensagem);
	Writeln(Arquivo,Mensagem);
	Close(Arquivo);
End.

