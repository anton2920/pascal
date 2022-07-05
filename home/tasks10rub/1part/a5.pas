program a5;
uses sysutils;
var a, k, i:integer;
s:string;
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
begin
	k:= 0;
	readln(a);
	s:=tobin(a);
	for i:=1 to length(s) do
		begin
			if s[i] = '1' then
				k:= k + 1;
		end;
	writeln(k);
end.