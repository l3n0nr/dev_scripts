Program Pzim ;
Var
	a: array [1..10] of integer ;
	cont,cont1,x : integer; 
 Begin
 //iniciando as variaveis
	 cont := 0;
	 cont1:= 0;
	 x    := 0;
 //recebendo os valores
 	For cont := 1 to 10 do
 	Begin
	 	Writeln('Digite o numero');
	 	Readln(a[cont]);
	End; 
 //processadando os dados
	 For cont := 1 to 10 do
	 Begin
	 	For cont1 := cont+1 to 10 do
	 	Begin
	 		If (a[cont]>a[cont1]) then
	 		Begin
	 			x := a[cont];
				a[cont] := a[cont1];
				a[cont1] := x ;  	
	 		End;
	 	End;
	 End;
 //resultado 
	 For cont := 1 to 10 do
	 Begin
	     Writeln('O numero ',cont,'--->>>>>>>' , a[cont]);
	 End;
	  
 End.
