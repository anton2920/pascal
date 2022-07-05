program a1;
var a: array [1..5, 1..5] of integer;
i, j, s: longint;
begin
	randomize;
	s:= 0;
	for i:= 1 to 5 Do
		begin
			for j:= 1 to 5 Do
				begin
				a[i, j]:= random(100) + 1;
				write(a[i, j]: 4);
				if i > j then
					s:= s + a[i, j]; 
				end;
			writeln;
		end;	
	writeln(s);
end.