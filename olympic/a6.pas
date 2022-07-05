program a6;
var a,i,k:integer;
begin
k:=0;
read(a);
if (a mod 2 <> 0) and (a>=3) and (a<=99) then 
begin
repeat
write(a, ' ');
if a mod 2 = 0 then
begin
a:=a div 2;
end
else 
begin
a:=3*a+1;
end;
until a=1;
write('1 ');
end
else
write('Error!!');
writeln;
end.
