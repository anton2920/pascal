program a15;
const N = 4;
var a:array [1..4, 1..N] of longint;
i,j:longint;
k:extended;
b:array [1..N] of extended;
begin
k:=1;
	for j:=1 to N do
		begin
			for i:=1 to 4 do
				begin
					read(a[i,j]);
					k:=k*a[i,j];
				end;
			{writeln('Number of chanels: ', a[1,j]:8);
			writeln('Frequency: ', a[2,j]:8);
			writeln('How many bits: ', a[3,j]:8);
			writeln('Length: ', a[4,j]:8);
			writeln('----------------------------');}
			b[j]:=k/(8*1024*1024);
			k:=1;
      			{writeln('The result is: ', b[j]:8);}
			writeln('----------------------------');
		end;
	for i:=1 to N do
		write(b[i]:8:4, ' ');
writeln;
end.
