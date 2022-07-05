program a1;
var a,b: array [1..10, 1..10] of integer;
c: array [1..10,1..10] of real;
x:real;
i:integer;
begin
randomize;
write('Type x: ');
readln(x);
if (x<0) and (x>=-1) then
   write('Error!')
else
begin
for i:=1 to 10 do
   begin
      a[i]:=random(11);
      write(a[i]:4);
   end;
writeln;
for i:=1 to 10 do 
   begin
      b[i]:=random(11);
      write(b[i]:4);
   end;
writeln;
if x>=0 then
      for i:=1 to 10 do
      begin
         c[i]:=(sqrt(EXP(3*Ln(a[i]+b[i])))+x);
         write(c[i]:4);
      end;
if x<-1 then 
      for i:=1 to 10 do
      begin
         c[i]:=(abs(sqr(a[i])-b[i])-x);
         write(c[i]:4);
      end;
end;
writeln;
end.
