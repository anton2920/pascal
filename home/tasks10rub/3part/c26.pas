program c26;
var a:string;
function reverse(x:string):string;
var z:integer;
begin
	reverse:= '';
	for z:=length(x) downto 1 do
		reverse:= reverse + x[z];
end;


begin
	read(a);
	if a = reverse(a) then
		writeln('It is a palindrome')
	else
		writeln('It is not a palindrome')
end.