program c8;
var a :longint;
function is_perfect(x:longint):boolean;
var i, j:longint;
begin
	j:= 0;
	for i:=1 to x div 2 do
		begin
			if x mod i = 0 then
				j:= j + i
		end;
	if x = j then
		is_perfect:= true
	else
		is_perfect:= false;
end;

begin
	read(a);
	if is_perfect(a) = true then
		writeln('It is a perfect number')
	else
		writeln('It is not a perfect number')
end.