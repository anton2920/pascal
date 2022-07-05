program a3;
var a,b:array [1..10, 1..10] of integer;
j,i,k,m,l,n:integer;
begin
n:=10;
randomize;
for i:=1 to 10 do 
begin
   for j:=1 to 10 do
      begin
         a[i,j]:=random(10);
         write(a[i,j]:4);
      end;
writeln;
end;
writeln;
for i:=1 to 10 do
begin
   for j:=1 to 10 do
      begin
      if i=j then
         b[i,j]:=a[i,n-i+1]
      else
         b[i,j]:=a[i,j];
      end;
end;
for i:=1 to 10 do
begin
for j:=1 to 10 do
begin
if (j = n-i+1) then
 b[i,n-i+1]:=a[i,n-j+1];
write(b[i,j]:4);
end;  
writeln;
end;
writeln;
end.
