program c9;
uses sysutils;
var a, b:integer;

function count(x:integer):integer;
var i, j:longint;
begin
	j:= 0;
	for i:=1 to x div 2 do
		begin
			if x mod i = 0 then
				j:= j + i;
		end;
	count:= j;
end;

begin
	read(a, b);
	if (count(a) = b) and (a = count(b)) then
		writeln('It is an Amicable numbers')
	else
		writeln('It is not an Amicable numbers');
end.