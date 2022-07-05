program a1;
var a,n,i:integer;
begin
readln(n);
if (n>=1) and (n<30) then
begin
if n<5 then
a:=0;
if (n>=5) and (n<10) then
a:=1;
if (n>=10) and (n<15) then
a:=2;
if (n>=15) and (n<20) then
a:=3;
if (n>=20) and (n<25) then
a:=4;
if (n>=25) and (n<30) then
a:=6;
writeln(a);
end
else 
writeln('Error!');
end.
