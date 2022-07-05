program c4;
var a, i, j:longint;
begin
	read(a);
	j:= 0;
	for i:=1 to a div 2 do
		begin
			if a mod i = 0 then
				j:= j + 1;
		end;
	j:= j + 1;
	writeln(j);
end.