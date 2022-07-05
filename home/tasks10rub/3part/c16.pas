program c16;
var a:integer;

function factorial(x:integer):longint;
var i, c:integer;
begin
	c:= 1;
	for i:= x downto 1 do
		c:= c * i;
	factorial:= c;
end;

begin
	read(a);
	writeln(factorial(a));
end.