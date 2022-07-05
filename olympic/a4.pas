program a4;
var b,c,i,k,m,n:longint;
a: array [1..9] of longint;
begin
read(m);
b:=0;
c:=1;
repeat 
i:= m mod 10;
b:=b+1;
a[b]:=i;
m:= m div 10;
until m = 0;
k:=a[2]-a[1];
for i:=2 to b do 
if a[i] - a[i-1] = k then
c:=c+1;
if c = b then
writeln('ДА')
else writeln('НЕТ');
end.
