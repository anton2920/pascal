program yravneniya1;
var d,a,b,c,x1,x2: real;
begin
	read(a,b,c);
	d:=(b*b)-(4*a*c);
	if d > 0 then
		begin
			x1:=((b * (-1)) + sqrt(d)) / (2 * a);
			x2:=((b * (-1)) - sqrt(d)) / (2 * a);
			writeln(x1, x2);
		end
	else if d = 0 then
		begin
			x1:=(b * (-1)) / (2 * a);
			writeln(x1);
		end
	else if d < 0 then
		begin
			writeln('There is no real roots!');
		end;
end.