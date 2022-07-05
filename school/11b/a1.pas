program a1;
const N = 10;
var a: array [1..N, 1..N] of integer;
i, j, min, max:integer;
b: array [1..4] of integer;
begin
	randomize;
	min:= 32767;
	max:= -32768;
	for i:=1 to N do
		begin
			for j:=1 to N do
				begin
					a[i, j]:= random(100) + 1;
					write(a[i, j]: 4);
					if ((i = j) and (a[i, j] < min)) then
						begin
							min:= a[i, j];
							b[1]:= i;
							b[2]:= j;
						end
					else if ((j = N - i + 1) and (a[i, j] > max)) then
						begin
							max:= a[i, j];
							b[3]:= i;
							b[4]:= j;
						end;
				end;
			writeln;
		end;
	writeln;
	a[b[1], b[2]]:= max;
	a[b[3], b[4]]:= min;
	for i:=1 to N do
		begin
			for j:=1 to N do
				begin
					write(a[i, j]: 4);
				end;
			writeln;
		end;
end.