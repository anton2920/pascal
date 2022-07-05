program a9;
const N = 10;
var a:array [1..N,1..N] of integer;
i,j,s1,s2:longint;
begin
randomize;
s1:=0;
s2:=0;
for i:=1 to N do
	begin
		for j:=1 to N do
			begin	
				a[i,j]:=random(101);
				write(a[i,j]:4);
				if j > N-i+1 then
					s1:=s1+a[i,j];
				if j < N-i+1 then
					s2:=s2+a[i,j];
			end;
		writeln;
	end;
i:=abs(s1-s2);
writeln('Answer: ', i);
end.
