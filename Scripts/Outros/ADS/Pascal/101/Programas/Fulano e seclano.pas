 Program Pzim ;
	var ful,cic,anos : integer ;
 Begin
     ful:= 150 ;
     cic:= 110 ;
     while (ful>=cic) do
     begin
     	ful:= (ful + 2);
     	cic:= (cic + 3);
     	anos:=(anos+1);
     end ;
     	Writeln('A quantidade de tempo necessario e ',anos);
 End.
