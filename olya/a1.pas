program a1;
var a: array [1..10, 1..10] of integer;
i, j:integer;
begin
	randimize;
 	for i:=1 to 10 Do
 		begin
 			for j:=1 to 10 do
 				begin
 					a[i, j]:= random(101);
 				end;
 		end;
end.