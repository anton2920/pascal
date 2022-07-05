program a16;
const N = 10;
var a:array [1..N, 1..N] of integer;
j,i,k,n1,n2,n3,n4:integer;
m:real;
function nod(a1,a2:integer):integer;
var i1,j1,i2:integer;
begin
if a1 < a2 then
j1:= a1
else
j1:= a2;
	for i2:=i1 to j1 do
		begin
			if (a1 mod j1 = 0) and (a2 mod j1 =0) then
				nod := j1;
		end;
end;
function nok(a1,a2:integer):integer;
var i1,j1,k,h:integer;
begin
if a1 < a2 then
begin
	j1:=a2;
	i1:=a1;
end
else
begin
	j1:=a1;
	i1:=a2;
end;
if (i1 mod 2 = 0) and (j1 mod 2 = 0) then
begin
	if j1 mod i1 = 0 then
		nok:=j1
	else if j1 * 2 mod i1 = 0 then
		nok:=j1*2
	else
		nok:=j1*i1;
	end
else
begin
	if j1 mod i1 = 0 then
                nok:=j1
        else
                nok:=j1*i1;
        end;

end;
begin
randomize;
k:=0;
m:=0;
n1:=0;
for i:=1 to N do
	begin
		for j:=1 to N do
			begin
				a[i,j]:=random(100)+1;
				write(a[i,j]: 4);
				if j = n-i+1 then
					begin
						k:=k+1;
						m:=m+a[i,j];
					end;

			end;
		writeln;
	end;
m:=m/k;
for i:=1 to N do
	for j:=2 to N do
		begin
			if a[i,j-1] + a[i,j] < m then
				n1:=n1+1;
			if nod(a[i,j-1],a[i,j]) < 5 then
				n2:=n2+1;
			if nok(a[i,j-1],a[i,j]) > 10 then
				n3:=n3+1;			
		end;
writeln('Pairs: ');
writeln('NOD = ', n2);
writeln('NOK = ', n3);
writeln('Diagonal = ', n1);
end.
