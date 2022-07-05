program a18;
const N = 5;
var a: array [1..N, 1..N] of integer;
b:array [1..N, 1..N] of integer;
i,j:integer;
begin
randomize;
for i:=1 to N do
	begin
		for j:=1 to N do
			begin
				a[i,j]:=random(101);
				write(a[i,j]:4);
			end;
		writeln;
	end;
end.
