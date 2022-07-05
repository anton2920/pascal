program a12;
var a:array [1..30] of integer;
i,s:integer;
begin
randomize;
s:=0;
	for i:=1 to 30 do
		begin
			a[i]:=random(1001);
			write(a[i]:6);
			if a[i] mod 30 = 0 then
				s:=s+a[i];
		end;
writeln;
writeln('Answer is: ',s);
end.
