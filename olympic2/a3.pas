program a3;
var n,m,sch1,sch2,sch3,min,s:integer;
mass: array [1..100] of integer;
a: array [1..100] of integer;
begin
	read(n,m);
	sch3:=1;
	min:=32767;
	sch2:=2;
	for sch1:=1 to n do
		begin
			read(mass[sch1]);
			if mass[sch1] < min then
				min:=mass[sch1];
		end;
	a[1]:=min;
	while sch3 <> n+1 do
		begin
			min:=32767;
			for sch1:=1 to n do
				begin
					if (mass[sch1] < min) and (mass[sch1] > a[sch3]) then
						begin
							a[sch3+1]:= mass[sch1];
							min:=mass[sch1];
						end;
				end;
			sch3:=sch3+1;
		end;
	for sch1:=1 to n do
		write(a[sch1]:4);
	writeln;

	for sch1:=1 to n do
		begin
			if a[sch1] <> 0 then
				begin
					
				end;
		end;
end.