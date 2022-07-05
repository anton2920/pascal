program a13;
var a:array [1..30] of integer;
i,j,s:integer;
sr:real;
begin
s:=0;
j:=0;
	for i:=1 to 30 do
		begin
			a[i]:=random(1001);
			write(a[i]:6);
			if a[i] mod 2 = 0 then
				if (a[i] div 100 >= 1) and (a[i] div 100 < 10) then
					begin
						s:=s+a[i];
						inc(j);
					end;
		end;
writeln;
if s<>0 then
	begin
		sr:=s/i;
		writeln(sr);	
	end
else
writeln('There is no such numbers!!!');
end.

