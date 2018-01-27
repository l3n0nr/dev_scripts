Program Pzim ;
	var s,ns : real ;
 Begin
     writeln('Digite o valor do salario');
     readln(s);
     ns := s+(s*25)/100;
     writeln('OBS: O aumento foi de 25% no seu salario');
     writeln('O novo salario é ',ns :10:0);
 End.
