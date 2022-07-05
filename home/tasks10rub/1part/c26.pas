program c26;
var a:string;
function reverse(x:string):string;
var z:integer;
begin
	for z:=3 downto 1 do
		write(x[z]);
	writeln;
end.
begin
	read(a);
	if a = reverse(a) then
		writeln('It is a polyndrome')
	else
		writeln('It is not a polyndrome')
end.