program c20;
var a:string;
i:integer;
f:boolean;
begin
	read(a);
	f:= true;
	if a[2] >= a[1] then
		for i:=3 to length(a) do
			begin
				if a[i] < a[i - 1] then
					begin
						f:= false;
						break;
					end;
			end
	else if a[2] <= a[1] then
		for i:=3 to length(a) do
			begin
				if a[i] > a[i - 1] then
					begin
						f:= false;
						break;
					end;
			end;
	if f = false then
		writeln('Not monotoned')
	else 
		writeln('Monotoned');
end.