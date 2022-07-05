program b6;
uses sysutils;
var a:integer;
function tobin(x:integer):string;
	var
		s:string;
		z:integer;
	begin
		s:= '';
		tobin:= '';
		repeat
			s:= s + IntToStr(x mod 2);
			x:= x div 2;
		until x = 0;
		for z:=length(s) downto 1 do
			tobin:= tobin + s[z];
	end;

function rtobin(x:integer):string;
	var
		s:string;
	begin
		s:= '';
		repeat
			s:= s + IntToStr(x mod 2);
			x:= x div 2;
		until x = 0;
		rtobin:= s;
	end;

begin
	read(a);
	if tobin(a) = rtobin(a) then
		writeln('It is polyndrom')
	else
		writeln('It is not polyndom');
end.