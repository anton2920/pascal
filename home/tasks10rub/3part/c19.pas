program c19;
var a:string;
z:integer;
begin
	readln(a);
	for z:=length(a) downto 1 do
		write(a[z]);
	writeln;
end.