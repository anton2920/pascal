program b2;
var a, b, c:real;
begin
	read(a, b, c);
	if (a >= b) and (a >= c) then
		writeln(a)
	else if (b >= a) and (b >= c) then
		writeln(b)
	else if (c >= a) and (c >= b) then
		writeln(c);
end.