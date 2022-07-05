program c7;
var a, j, k:integer;
function is_simple(x:integer):boolean;
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
	k:= 0;
	j:= 0;
	while true do
		begin
			j:= j + 1;
			if is_simple(j) = true then
				begin
					write(j, ' ');
					k:= k +1;
				end;
			if k = a then
				break;
		end;
	writeln;
end.