program a2;
var a:array [0..30, 1..30] of integer;
b:array [1..4] of integer;
sch1,sch2,sch3,n,m:integer;
begin
	read(n,m);
	sch3:=1;
	for sch1:=n downto 1 do
		begin
			for sch2:=1 to n do
				begin
					a[sch1,sch2]:=sch3;
					sch3:=sch3+1;
				end;
		end;
	for sch1:=1 to n do 
		begin
			for sch2:=1 to n do
				write(a[sch1,sch2]:4);
			writeln;
		end;	
	for sch1:=n downto 1 do
		begin
			for sch2:=1 to n do
				begin
					if a[sch1,sch2] = m then
						begin
							b[1]:=a[sch1+1,sch2];
							b[2]:=a[sch1,sch2-1];
							b[3]:=a[sch1,sch2+1];
							b[4]:=a[sch1-1,sch2];
						end;
				end;
		end;
	for sch1:=1 to 4 do
	 if b[sch1] <> 0 then
	 	write(b[sch1], ' ');
	writeln;
end.
