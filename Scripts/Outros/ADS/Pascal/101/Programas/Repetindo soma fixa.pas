Program Pzim ;
     var n,n1,s,cont,r: integer;
Begin
cont:= 1;
while (cont<=5) do
begin
writeln('Digite numero');
read(n);
writeln('Digite numero');
read(n1);
	s:= (n+n1)+s;
	cont:= cont+1;
	writeln('O valor da soma é ',s);
end ;
writeln('A soma foi repetida ',r,' vezes')  ;
 End.
