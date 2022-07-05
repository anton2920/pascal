program a3;
var ans,a,i,k,m,n:integer;
begin
read(a);
ans:=0;
m:=10;
n:=0;
i:=0;
while a <> 153 do 
begin
write(a, ' ');
repeat
i:= a mod 10;
n:=i*i*i + n;
a:= a div 10; 
until a = 0;
a:=n;
n:=0;
i:=0;
end;
writeln;
end.
