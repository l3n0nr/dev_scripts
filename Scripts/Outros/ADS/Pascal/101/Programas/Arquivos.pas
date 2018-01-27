Program Pzim ;
Var 
	Arquivo : Text ;
Begin
		Assign(Arquivo,'Arq.Txt');
		ReWrite(Arquivo);
		Close(Arquivo);
End.
