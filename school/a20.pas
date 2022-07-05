program a20;
var a: array [1..3, 1..5] of integer;
i,j,k1,k2,k3,m,f:integer;
function is_simple(x:integer):boolean;
var i, j, k:integer;
f:boolean;
begin
	f:=true;
	if x mod 2 = 0 then
		f:=false;
	for i:= 3 to round(sqrt(x)) do
		begin
			if x mod i = 0 then
			begin
				f:=false;
				break;
			end;	
		end;
	if f = false then
		is_simple:=false
	else 
		is_simple:=true;
end;
function is_amorph(x:integer):boolean;
var i, j, k, x1:integer;
begin
	x1:=x;
	k:=1;
	repeat
		x1:=x1 div 10;
		k:= k * 10;
	until x1 = 0;
	if sqr(x) mod k  = x then
		is_amorph:=true
	else
		is_amorph:=false;  
end;
function is_poly(x:integer):boolean;
var i, j, k, x1:integer;
begin
	x1:=x;
	k:=0;
	repeat
		k:= k * 10;
		k:= k + x1 mod 10;
		x1:= x1 div 10;
	until x1 = 0;
	if x = k then
		is_poly:=true
	else
		is_poly:=false; 
end;
begin
	k1:=1;
	k2:=1;
	k3:=1;
	for i:=1 to 3 do 
		for j:=1 to 5 do
			a[i,j]:=0;
	for i:=100 to 10000 do
		begin
			if is_simple(i) = true then
				if k1 <= 5 then
					begin
						a[1, k1]:=i;
						k1:= k1 + 1;
					end;
			if is_amorph(i) = true then
				if k2 <= 5 then
                                        begin
                                                a[3, k2]:=i;
                                                k2:= k2 + 1;
                                        end;
			if is_poly(i) = true then
				if k3 <= 5 then
                                        begin
                                                a[2, k3]:=i;
                                                k3:= k3 + 1;
                                        end;
			if (k1 = 6) and (k2 = 6) and (k3 = 6) then
				break; 
		end;
	for i:=1 to 3 do
		begin
			for j:=1 to 5 do
				write(a[i,j]: 10);
			writeln;
		end;
end.
