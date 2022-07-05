program c18;
var a: array [1..3, 1..10000] of longint;
i, n:integer;

begin
	read(n);
	write('Number: ': 8);
	for i:=1 to n do
		begin
			a[1, i]:= i;
			write(a[1, i]: 7);
		end;
	writeln;
	write('Sqr: ': 8);
	for i:=1 to n do
		begin
			a[2, i]:= sqr(i);
			write(a[2, i]: 7);
		end;
	writeln;
	write('Cube: ': 8);
	for i:=1 to n do
		begin
			a[3, i]:= sqr(i) * i;
			write(a[3, i]: 7);
		end;
	writeln;
end.