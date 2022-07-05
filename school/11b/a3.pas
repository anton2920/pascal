program a24;

uses sysutils;

const N = 10;

var a: array [1..N, 1..N] of integer;
i, j, summin, summax, currsumm, min, max: integer;

begin
	randomize;
	summin:= 32767;
	summax:= -32768;
	min:= 0;
	max:= 0;
	for i:= 1 to N do
		begin
			currsumm:= 0;
			for j:=1 to N do
				begin
					a[i, j]:= random(10) + 1;
					write(a[i, j]:4);
				end;
			writeln;
			for j:=1 to N do
				begin
					currsumm:= a[i, j] + currsumm;
				end;
			writeln(i, ' ', currsumm);
			if (currsumm > summax) then
				begin
					summax:= currsumm;
					max:= i;	
				end;
			if (currsumm < summin) then
				begin
					summin:= currsumm;
					min:= i;
				end;
		end;
	writeln('Min line is ', min);
	writeln('Max line is ', max);
end.
