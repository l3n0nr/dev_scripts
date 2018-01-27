Program Pzim ;
 	var n,n1,n2,r: real;
     var nome: string;
 Begin
 	writeln('OBS: Valor das notas deve ficar entre 1 e 10. ');
     writeln('Digite o seu nome: ');
     read(nome);
     write('Olá ',nome ,' informe o a sua primeira nota.');
     write('');
     write('Digite a primeira nota: ');
     read(n);
     write('Digite a segunda nota: ');
     read(n1);
     write('Digite a terceira nota: ');
     read(n2);
     r:= (n+n1+n2)/3;
     write(nome,' a media das suas notas é igual a: ',r:10:2); 
 End.
