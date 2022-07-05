program a10;
const N = 10;
var a:array [1..N,1..N] of integer;
i,j,p1,p2:longint;
p:extended;
begin
randomize;
p1:=1;
p2:=1;
for i:=1 to N do
	begin
		for j:=1 to N do
			begin
				a[i,j]:=random(100)+1;
				write(a[i,j]:4);
				if (i<j)and (j<n-i+1) then
					p1:=p1*a[i,j];
				if (i>j) and (j>n-i+1) then
					p2:=p2*a[i,j]; 
			end;
		writeln;
	end;
p:=p1/p2;
writeln('Answer: ',p);
end.
