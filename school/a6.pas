program a6;
const N = 10;
var a:array [1..N,1..N] of integer;
i,j,min1,min2,max1,max2:integer;
begin
min1:=32767;
min2:=32767;
max1:=-32000;
max2:=-32000;
for i:=1 to N do
begin
  for j:=1 to N do
    begin
    a[i,j]:=random(100);
    write(a[i,j]:4);
    end;
writeln;
end;
for i:=1 to N do
  for j:=1 to N do
    begin
      if (i<j) and (j<N-i+1) then
        if a[i,j]<min1 then
        min1:=a[i,j];
      if (i>j) and (j>N-i+1) then
        if a[i,j]<min2 then
        min2:=a[i,j];
      if (i>j) and (j<N-i+1) then
        if a[i,j]>max1 then
        max1:=a[i,j];
      if (i<j) and (j>N-i+1) then
        if a[i,j]>max2 then
        max2:=a[i,j];
    end;
write('min1 = ',min1, ' min2 = ',min2, ' max1 = ', max1, '  max2 = ', max2);
end.
