program a1;
var a,b,x,y,r:integer;
Function F(k:integer):integer;
begin
if k=x then
F:=1
else if (k-a>0) then 
   if k mod b = 0 then
         F:=F(k-a) + F(k div b)
   else F:=F(k-a)
else 
F:=0;
end;
begin
read(a,b);
read(x,y);
r:=F(y);
writeln(r);
end.
