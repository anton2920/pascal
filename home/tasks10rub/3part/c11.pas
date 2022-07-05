program c11;
var a, b:integer;

function nok(a1,a2:integer):integer;
var i1,j1,k,h:integer;
begin
	if a1 < a2 then
		begin
			j1:=a2;
			i1:=a1;
		end
	else
		begin
			j1:=a1;
			i1:=a2;
		end;
	if (i1 mod 2 = 0) and (j1 mod 2 = 0) then
		begin
			if j1 mod i1 = 0 then
				nok:=j1
			else if j1 * 2 mod i1 = 0 then
				nok:=j1 * 2
			else
				nok:=j1*i1;
			end
	else
		begin
			if j1 mod i1 = 0 then
                nok:=j1
       		else
                nok:=j1*i1;
        end;

end;

begin
	read(a, b);
	writeln(nok(a, b));
end.