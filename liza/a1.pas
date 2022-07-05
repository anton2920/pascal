program a1;

var a, y: real;

begin
	a:= -2;
	while a <> 2 Do
		begin
			y:= 10 / (a + 10);
			write(y: 4: 2, ' ');
			a:= a + 0.1;
		end;
	writeln;
end.