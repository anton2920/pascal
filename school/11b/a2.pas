program a1;
const N = 5;
var a: array [1..N, 1..N] of integer;
i, j, min, max, even1, odd1:integer;
b: array [1..4] of integer;
begin
	randomize;
	min:= 32767;
	max:= -32768;
	even1:= 0;
	odd1:= 0;
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
					if ((((i < j) and (j < N - i + 1)) or ((i > j) and (j > N - i + 1))) and (a[i, j] mod 2 = 0)) then
						begin
							even1:= even1 + 1;
						end
					else if ((((i > j) and (j < N - i + 1)) or ((i < j) and (j > N - i + 1))) and (a[i, j] mod 2 <> 0)) then
						begin
							odd1:= odd1 + 1;
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
	writeln;
	writeln('Number of even = ', even1);
	writeln('Number of odd = ' ,odd1);
end.