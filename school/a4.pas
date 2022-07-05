program a4;
var a:array [1..4] of integer;
i,j:integer;
begin
randomize;
for i:=1 to 4 do
   for j:=1 to 4 do
      begin
         a[i,j]:=random(10);
         write(a[i,j]:4); 
      end;
end.
