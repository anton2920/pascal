program c28;
var a, i, p:integer;
begin
	p:= 1;
	for i:=1 to 5 do
		begin
			read(a);
			if i mod 2 = 0 then
				p:= p * a;
		end;
end.