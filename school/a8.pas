program a1;
var m,a,c,n,i:longint;
begin
n:=0;
c:=0;
for i:=2 to 20 do
begin
if (i mod 2 <> 0) then
begin
for m:=2 to i div 2 do
begin
if (i mod m = 0) then 
c:=1;
end;
end
else
begin
if i = 2 then
write('2', ' ');
c:=1;
end;
if c = 0 then
begin
write(i, ' ');
n:=n+1;
end;
c:=0;
end;
writeln('Amount is: ', n);
end.
