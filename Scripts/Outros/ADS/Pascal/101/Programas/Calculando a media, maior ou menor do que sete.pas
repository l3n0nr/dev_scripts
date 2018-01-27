Program Pzim ;
	var n,n1,m: real; 
 Begin
     write('Digite a primeira nota ');
     read(n);
     write('Digite a segunda nota ');
     read(n1);
     m := (n+n1)/2 ;
     if (m>= 7) then
     	Write('Voce ficou acima da media ou com a media sete')
     	else
     		Write('Voce tirou uma nota menor do que 7');
 End.
