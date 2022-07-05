program a14;
var a:array [1..40] of integer;
i,j,k:integer;
begin
randomize;
k:=0;
	for i:=1 to 40 do
		begin
			a[i]:=random(10001);
			write(a[i]:8);
		end;
	for i:=2 to 40 do
		if (a[i-1] mod 10 = 5) or (a[i] mod 10 = 5) then
			inc(k);
writeln;
writeln('The answer is: ',k)
end.
