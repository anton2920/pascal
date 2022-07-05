program a23;
var a:string;
b:array ['a'..'z'] of integer;
i, j:integer;
ch:char;
max:integer;
begin
	for ch:='a' to 'z' do
		b[ch]:=0;
	write('Type a string: ');
	readln(a);
	for ch:='a' to 'z' do
		for i:=1 to length(a) do
			if a[i] = ch then
				b[ch]:=b[ch] + 1;
	max:=b['a'];
	for ch:='b' to 'z' do
		begin
				if b[ch] > max then
					max:=b[ch];
		end;
	for i:=max downto 1 do
		for ch:='a' to 'z' do
			if b[ch] = i then
				for j:=1 to i do
					write(ch);
	writeln;
end.
