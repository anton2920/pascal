program c6;
var a, j:longint;
function is_simple(x:longint):boolean;
var i:integer;
f:boolean;
begin
	f:= true;
	if ((x mod 2 = 0) and (x <> 2)) or (x = 1) then
		f:= false
	else
		for i:=3 to trunc(sqrt(x)) + 1 do 
			if x mod i = 0 then
				f:= false;
	if f = false then
		is_simple:= false
	else
		is_simple:= true;
end;

begin
	read(a);
	for j:=1 to a do
		if is_simple(j) = true then
			write(j, ' ');
	writeln;
end.