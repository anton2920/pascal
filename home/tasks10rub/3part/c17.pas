program c17;
var n, k:integer;
a:extended;

function factorial(x:integer):longint;
var i, c:integer;
begin
	c:= 1;
	for i:= x downto 1 do
		c:= c * i;
	factorial:= c;
end;

begin
	read(n, k);
	a:= (factorial(n)) / (factorial(k) * factorial(n - k));
	writeln(a);
end.