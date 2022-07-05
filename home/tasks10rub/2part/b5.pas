program b5;
uses sysutils;
var a:string;
begin
	read(a);
	if ((StrToInt(a[1]) + StrToInt(a[2])) = (StrToInt(a[3]) + StrToInt(a[4]))) then
		writeln('It is a lucky ticket')
	else
		writeln('It is not a lucky ticket');
end.