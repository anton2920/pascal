program c2;
var a, i, j:longint;
begin
	read(a);
	j:= 0;
	for i:=2 to a div 2 do
		begin
			if a mod i = 0 then
				j:= i;
		end;
	if j <> 0 then
		writeln(j)
	else 
		writeln('It does not exist');
end.