program a2;
var b,c,i,k,m,n,sch1,sch2,sch3,s:integer;
a:array [1..1000] of integer;
begin
read(n,m);
c:=0;
sch1:=0;
for i:=1 to n do
a[i]:=1;
sch3:=n;
while sch3<>0 do
begin
for i:=1 to n do
begin
sch1:=sch1+a[i];
if sch3 = 0 then
begin
break;
end;
if sch1 = m then
begin
a[i]:=0;
sch3:=sch3-1;
write(i, ' ');
sch1:=0;
end;
end;
end;
writeln;
end.
