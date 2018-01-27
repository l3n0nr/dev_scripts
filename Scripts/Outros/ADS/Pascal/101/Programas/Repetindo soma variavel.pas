Program Pzim ;
     var n,n1,s,cont,r: integer;
Begin
writeln('Digite o numero de repetições que deseja realizar');
read(r);
writeln('Digite o primeiro numero');
read(n);
writeln('Digite o segundo numero');
read(n1);
while (cont<r) do
begin
	s:= (n+n1)+s;
	cont:= cont+1;
end  ;
writeln('A soma foi repetida ',r,' vezes')  ;
writeln('');
writeln('');
writeln('O valor da soma é ',s);
 End.
