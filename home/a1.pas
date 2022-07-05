var i,n:longint;
function f(k:integer):boolean;
var flag:boolean; j:integer;
begin
	flag:=true;
	for j:=2 to k div 2 do
		if k mod j = 0 then
			begin
				flag:=false;
				break;
			end;
	f:=flag;
end;
begin
	n:=999999;
	for i:=2 to 50 do
	if f(i) then writeln(i);
end.