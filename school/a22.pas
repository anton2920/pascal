program a22;
var a:string;
i,j,k:integer;
ch:char;
begin
	write('Type a string: ');
	readln(a);
	for ch:='a' to 'z' do
		for i:=1 to length(a) do
			begin
				if (a[i] = ch)  or (a[i] = upcase(ch)) then
					write(a[i]);	
			end;
	writeln();
end.
