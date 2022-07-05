program c21;
var a, i:integer;
begin
	read(a);
	write(a ,' = 1');
	i:= 1;
	while a <> 1 do
		begin
			i:= i + 1;
			if a mod i = 0 then
				begin
					write(' * ', i);
					a:= a div i;
					i:= 1;
				end;
		end;
	writeln;
end.