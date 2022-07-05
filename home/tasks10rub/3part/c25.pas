program c25;
uses sysutils;
var a, b:string;
i, j, k, i1, i2, j2:integer;
function tobin(x:integer):string;
	var	s:string;
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
	var k, i:integer;
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
	i1:= length(a);
	i:= 0;
	j:= 0;
	if i1 mod 2 = 0 then
		begin
			for i2:=1 to (length(a) div 2) do
				i:= i + StrToInt(a[i2]);
			for j2:= length(a) downto ((length(a) div 2) + 1) do
				j:= j + StrToInt(a[j2]);
			while i > 9 do
				begin
					b:=IntToStr(i);
					i:=((StrToInt(b[1])) + (StrToInt(b[2])));
				end;
			while j > 9 do
				begin
					b:=IntToStr(i);
					j:=((StrToInt(b[1])) + (StrToInt(b[2])));
				end;
			if (i = j) or (count1(i) = count1(j)) then
				writeln('It is a lucky ticket')
			else
				writeln('It is not a lucky ticket');
		end
	else 
		begin
			for i2:=1 to (length(a) div 2) do
				i:= i + StrToInt(a[i2]);
			for j2:= length(a) downto ((length(a) div 2) + 2) do
				j:= j + StrToInt(a[j2]);
			while i > 9 do
				begin
					b:=IntToStr(i);
					i:=((StrToInt(b[1])) + (StrToInt(b[2])));
				end;
			while j > 9 do
				begin
					b:=IntToStr(i);
					j:=((StrToInt(b[1])) + (StrToInt(b[2])));
				end;
			k:= StrToInt(a[((length(a) div 2) + 1)]);
			if ((i = j) and (i = k) and (j = k)) or ((count1(i) = count1(j)) and (count1(i) = count1(k)) and (count1(j) = count1(k))) then
				writeln('It is a lucky ticket')
			else
				writeln('It is not a lucky ticket');
			end;
end.
