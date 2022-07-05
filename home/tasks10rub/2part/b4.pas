program b4;
uses sysutils;
var a:integer;
a1, a2:string;
begin
	read(a1);
	a2:='';
	for a:=4 downto 1 do 
		a2:=a2+a1[a];
	if StrToInt(a2) = StrToInt(a1) then
		writeln('It is polyndrom')
	else
		writeln('It is not polyndrom');
end.