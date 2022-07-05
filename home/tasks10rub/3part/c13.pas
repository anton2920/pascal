program c13;
var d, c:integer;

function binpow(a, n:integer):integer;
var b:integer;
begin
	if (n = 0) then
		binpow:= 1
	else if (n mod 2 = 1) then
		binpow:= binpow(a, n - 1) * a
	else 
		begin
			b:= binpow(a, n div 2);
			binpow:= b * b;
		end;
end;

begin
	read(d, c);
	writeln(binpow(d, c));
end.