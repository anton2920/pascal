program a1;
var a:array [1..1024] of integer;
sch1,sch2,sch3,sch4,c:integer;
function invert(b:integer):integer;
begin
	if b = 1 then
		invert:=0
	else
		invert:=1;
	end;
begin
	sch1:=2;
	a[1]:=1;
	sch4:=1;
	sch2:=1;
	while sch1<=1024 do
	begin
    while sch2 <= sch4 do
            begin
			a[sch1]:=invert(a[sch2]);
			sch1:=sch1+1;
			sch2:=sch2+1;
            end;
    sch2:=1;
    sch4:=sch4*2
	end;
	readln(c);
	write(a[c-1], ' ',a[c], ' ',a[c+1]);
	writeln;
end.

