program a4;
var d1, d2, m1, m2, y1, y2, sch1, sch2, sch3, sch4, d, df, dch, y, sch5, d3, m3:integer;
begin
	sch4:= 0;
	read(d1, m1, y1);
	read(d2, m2, y2);
	d:= 31;
	dch:= 30;
	df:= 28;
	if (y1 mod 4 = 0) and (y1 mod 100 <> 0) then
		y:= 1;
	if y1 mod 400 = 0 then
		y:= 1;
	if y = 1 then
		df:= 29;
	if m1 > m2 then
		begin
			d3:= d1;
			m3:= m1;
			d1:= d2;
			m1:= m2;
			d2:= d3;
			m2:= m3;
		end;
    sch5:= d1;
	if (m1 = m2) and (d1 > d2) then
		begin
			d3:=d1;
			d1:=d2;
			d2:=d3;
		end;
	for sch1:=m1 to m2 do
		begin
			if sch1 < m2 then
				begin
					if (sch1 = 1) or (sch1 = 3) or (sch1 = 5) or (sch1 = 7) or (sch1 = 8) or (sch1 = 10) or (sch1 = 12) then
						sch2:=d;
					if (sch1 = 4) or (sch1 = 6) or (sch1 = 9) or (sch1 = 11) then
						sch2:=dch;	
					if sch1 = 2 then
						sch2:=df;
						for sch3:=sch5 to sch2 do
							sch4:=sch4+1;
					if sch4 = 1 then
						sch4:=sch4+1;
				end
			else
				begin
					for sch3:=sch5 to d2 do
						sch4:=sch4+1;
				end;
			sch5:=1;	
		end;	
	sch4:=sch4-1;
	writeln(sch4);
end.
