program b51;
uses sysutils;
var a, b: string;
i,j:integer;
begin
	read(a);
	i:= ((StrToInt(a[1])) + (StrToInt(a[2])));
	j:= ((StrToInt(a[3])) + (StrToInt(a[4])));
	if i > 9 then
		begin
			b:=IntToStr(i);
			i:=((StrToInt(b[1])) + (StrToInt(b[2])));
		end;
	if j > 9 then
		begin
			b:=IntToStr(i);
			j:=((StrToInt(b[1])) + (StrToInt(b[2])));
		end;
	if i = j then
		writeln('It is a lucky ticket')
	else
		writeln('It is not a lucky ticket');
end.