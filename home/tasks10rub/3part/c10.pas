program c10;
var a, b:integer;

function nod(a1,a2:integer):integer;
var i1, j1, i2:integer;
begin
	if a1 < a2 then
		j1:= a1
	else
		j1:= a2;
	for i1:=1 to j1 do
		begin
			if (a1 mod i1 = 0) and (a2 mod i1 =0) then
				nod:= i1;
		end;
end;

begin
	read(a, b);
	writeln(nod(a, b));
end.