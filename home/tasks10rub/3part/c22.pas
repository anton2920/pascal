program c22;
uses sysutils;
var a, b, i:integer;
a1, b1, c:string;
begin
	read(a, b);
	a1:= IntToStr(a);
	b1:= IntToStr(b);
	c:= '';
	for i:= 1 to length(a1) * 2 do
		begin
				c:= c + a1[i];
				c:= c + b1[i];
		end;
	writeln(c);
end.
