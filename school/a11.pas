program a11;
var a:array [1..20] of integer;
i,j,min,sch1,sch2:integer;
begin
randomize;
min:=32767;
	for i:=1 to 20 do
		begin
			a[i]:=random(2001)-1000;
			write(a[i]:6);
			if a[i] mod 5 = 0 then
				if a[i] < min then
					min:=a[i];
		end;
writeln;
writeln('Answer is: ',min);
end.
