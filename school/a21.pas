program a21;
var a:string;
i,j:integer;
begin
	write('Type a string: ');
	readln(a);
	i:=length(a);
	for j:=i downto 1 do
		write(a[j]);
	writeln;
end.
