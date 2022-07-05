program a5;
const N = 10;
var a:array [1..N,1..N] of integer;
i,j,s,min:integer;
begin
randomize;
s:=0;
min:=32767;
for i:=1 to N do 
begin
  for j:=1 to N do
    begin
      a[i,j]:=random(100);
      write(a[i,j]:4);
      if a[i,j]<min then
        min:=a[i,j];
    end;
s:=min+s;
min:=32767;
writeln;
end;
writeln(s);
end.
