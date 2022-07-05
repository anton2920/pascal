program c27;
uses sysutils;
var a:integer;
x: boolean;
begin
	read(a);
	x:= true;
	while a <> 1 do
		begin
			if a mod 2 = 0 then
				a:= a div 2
			else 
				begin
					x:= false;
					break;
				end;
		end;
	if x = true then
		writeln('It is the power of two')
	else 
		writeln('It is not a power of two');
end.