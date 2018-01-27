Program Pzim ;
Var 	
	Arquivo : Text ; 
	Mensagem : String ;
Begin
	Assign(Arquivo,'Arq.txt');
	Reset(Arquivo);
	Readln(Arquivo,Mensagem);
	Close(Arquivo);
End.

