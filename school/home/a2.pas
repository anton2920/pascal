program a1;
var a:array [1..30] of integer;
b:array [1..3] of integer;
s1,s2,i,k,j:integer;
begin
randomize;
for i:=1 to 30 do
begin
a[i]:=random(100);
write(a[i]:4);
end;
s1:=a[1]+a[2]+a[3];
for i:=4 to 30 do
begin
s2:=a[i-2]+a[i-1]+a[i];
if s2 > s1 then
begin
s1:=s2;
b[1]:=a[i-2];
b[2]:=a[i-1];
b[3]:=a[i]; 
end;
end;
writeln;
writeln(b[1], ' ',b[2], ' ',b[3]);
end.
