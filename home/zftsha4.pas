program zftsha4;
var a,b,c:longint;
d:real;
begin
	read(a, b, c);
	d:=(sqr(b)) - (4 * a * c);
	if (d > 0) then
		writeln('2')
	else if (d < 0) then
		writeln('0')
	else if (d = 0) then
		writeln('1');
end.