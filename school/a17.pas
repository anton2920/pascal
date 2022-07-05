program a17;
const N = 5;
var a:array [1..N, 1..N] of integer;
i,j,center,r,sum,k:integer;
sr:real;
begin
randomize;
sum:=0;
k:=0;
for i:=1 to N do
	begin
		for j:=1 to N do
			begin
				a[i,j]:=random(101);
				write(a[i,j]:4);
			end;
		writeln;
	end;
center:= N div 2 + 1;
For r:=1 to N div 2 do
	begin
		for i:=1 to N  do
			begin
				for j:=1 to N do
					begin
						if (sqr(i - center) + sqr(j - center)) = sqr(r) then
							begin
								sum:=a[i,j] + sum;
								k:=k+1;
							end;
					end;
			end;
		if k <> 0 then
                	sr:=sum / k;
                sum:=0;
                k:=0;
                writeln('Sr: ', sr:4:2, ' r = ', r);
	end;
end.
