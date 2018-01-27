Program Pzim ;
var a,b,d : integer ; 
 Begin
    writeln('Digite o primeiro numero');
    read(a);
    writeln('Digite o primeiro valor');
    read(b);
    if (a>b) then
    d:= a-b 
    else
    d:= b-a;
    writeln('A diferença e ',d);
 End.
