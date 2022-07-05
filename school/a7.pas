program a7;
const N = 10;
var a:array [1..N,1..N] of integer;
i,j,m,f:integer;
begin
randomize;
f:=0;
for i:=1 to N do
begin
for j:=1 to N do
begin
a[i,j]:=random(100);
write(a[i,j]:4);
end;
writeln;
end;
for i:=1 to N do
for j:=1 to N do
begin
if not ((a[i,j] = 1) or (a[i,j]<=0)) then
begin
for m:=2 to (a[i,j] div 2) do
begin
if (a[i,j] mod m = 0) then
begin
f:=1;
break;
end;
end;
end
else
f:=1;
if f = 0 then
begin
writeln('The number ', a[i,j], ' is simple');
end;
f:=0;
end;
end.
