program zftsha5;
var a,b : array [1..10000] of longint;
m, n, i, j, j1, j2:longint;
f:boolean;
begin
	f:=true;
	read(m, n);
	j1:= 0;
	for i:=2 to m do
		if (m mod i = 0) then
			begin
				j1:= j1 + 1;
				a[j1]:= i;
			end;
	j2:= 0;
	for i:=2 to n do
		if (n mod i = 0) then
			begin
				j2:= j2 + 1;
				b[j2]:= i;
			end;
	for i:=1 to j1 do
		for j:=1 to j2 do
			if a[i] = b[j] then
				begin
					f:=false;
					break;
				end;
	if f = true then
		writeln('ДА')
	else 
		writeln('НЕТ');
end.
