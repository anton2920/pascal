program c23;
uses sysutils;
var a, n:integer;
function ton(x, n:integer):string;
var
s:string;
z:integer;
begin
	s:= '';
	ton:= '';
	repeat
		if x mod n < 10 then
			s:= s + IntToStr(x mod n)
		else
			case x mod n of
				10: s:= s + 'A';
				11: s:= s + 'B';
				12: s:= s + 'C';
				13: s:= s + 'D';
				14: s:= s + 'E';
				15: s:= s + 'F';				
				end;
		x:= x div n;
	until x = 0;
	for z:=length(s) downto 1 do
		ton:= ton + s[z];
end;
begin
	read(a, n);
	writeln(ton(a, n));
end.