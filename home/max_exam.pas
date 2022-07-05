program exam;
const N = 20; M = 20;
var 
	a, b, c: array [1..N, 1..M] of integer;

function count(): Integer;
var cnt: integer;
i, j: integer;

begin
	cnt:= 0;
	for i:= 1 to N Do
		for j:= 1 to M Do
			if (c[i, j] = 1) then
				inc(cnt);
	count:= cnt;
end;

procedure array1();
var
	i, j: integer;
begin
	for i:= 1 to N Do
		begin
			for j:= 1 to M Do
				begin
					a[i, j]:= random(30) + 1;
					write(a[i, j], ''#9'');
				end;
			writeln;
		end;
	writeln;
end;

procedure array2();
var
	i, j: integer;
begin
	for i:= 1 to N Do
		begin
			for j:= 1 to M Do
				begin
					b[i, j]:= random(30) + 1;
					write(b[i, j], ''#9'');
				end;
			writeln;
		end;
	writeln;
end;

procedure array3();
var
	i, j: integer;
begin
	for i:= 1 to N Do
		begin
			for j:= 1 to M Do
				begin
					if (a[i, j] > b[i, j]) then
						c[i, j]:= 1
					else
						c[i, j]:= 0;
					write(c[i, j], ''#9'');
				end;
			writeln;
		end;
	writeln;
end;

begin
	randomize;
	array1();
	array2();
	array3();
	writeln('Count 1: ', count());
end.
