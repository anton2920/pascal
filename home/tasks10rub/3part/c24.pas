program c24;
var a, b, i, j, c:integer;
begin
	read(a, b);
	if a > b then
		c:= a
	else
		c:= b;
	for i:= 2 to c do
		begin
			if (a mod i = 0) and (b mod i = 0) and (i <> a) and (i <> b) then
				j:= i;
		end; 
	if (j <> 0) then
		writeln(j)
	else 
		writeln('It does not exist');
end.
