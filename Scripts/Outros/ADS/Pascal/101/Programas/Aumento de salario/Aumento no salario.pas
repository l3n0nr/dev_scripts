Program Pzim ;
	var s,p,ns : real ;
 Begin
     writeln('Digite o valor do salario');
     readln(s);
     writeln('Digite o percentual de aumento');
     readln(p);
     ns := s+(s*p)/100;
     writeln('OBS: O aumento foi de ',p:10:1,'% no seu salario');
     writeln('O novo salario é ',ns);
 End.
