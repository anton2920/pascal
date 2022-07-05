program a1;
var a:array [1..30] of integer;
i,n,k,b,c,s,max:integer;
begin
randomize;
c:=0;
max:=-32760;
for i:=1 to 30 do
begin
a[i]:=random(100);
write(a[i]:4);
if a[i]>max then 
max:=a[i];
end;
for i:=1 to 30 do
begin
if a[i]=max then
c:=c+1;
end;
writeln;
writeln(c);
end.
