program a19;
const N = 30;
var a:array [1..N] of integer;
i,max1,max2:integer;
begin
randomize;
for i:=1 to N do
begin
	a[i]:=random(10);
	write(a[i]:4);
end;
if a[1] < a[2] then
begin
	max1:=a[1];
	max2:=a[2];
end
else
begin
	max2:=a[1];
	max1:=a[2];
end;
writeln;
for i:=1 to N do
begin
	if a[i] > max1 then
		begin
			max2:=max1;
			max1:=a[i];
		end
	else if (a[i] > max2) and (a[i] <> max1) then
			max2:=a[i]; 
end;
writeln(max1);
writeln(max2);
end.
