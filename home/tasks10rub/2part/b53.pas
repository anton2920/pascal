program b53;
uses sysutils;
var a, b:string;
i, j, k:integer;
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
function count1(x:integer):integer;
var a, k, i:integer;
s:string;
begin
	k:= 0;
	s:=tobin(x);
	for i:=1 to length(s) do
		begin
			if s[i] = '1' then
				k:= k + 1;
		end;
	count1:=k;
end;
begin
	read(a);
	i:= ((StrToInt(a[1])) + (StrToInt(a[2])));
	j:= ((StrToInt(a[4])) + (StrToInt(a[5])));
	k:= (StrToInt(a[3]));
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
	if ((i = j) and (i = k) and (j = k)) or ((count1(i) = count1(j)) and (count1(i) = count1(k)) and (count1(j) = count1(k))) then
		writeln('It is a lucky ticket')
	else
		writeln('It is not a lucky ticket');
end.