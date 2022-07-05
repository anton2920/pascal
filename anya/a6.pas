program a1;
var b,c,d,b1,c1,ans,x1:extended;
i,j:integer;
function first():extended;
	begin
		j:=1;
		while j<>2017 do
		begin
			b:=b*j;
			j:=j+2;
		end;
		j:=2;
		while j<>2018 do
		begin
			c:=c*j;
			j:=j+2;
		end;
		first:=b/c;
	end;
function second():extended;
	begin
		for j:=1010 to 2017 do
			b1:=b1*j;
		for i:=1 to 1017 do
			d:=d*i;	
		x1:=b1 / d;
		c1:=(1/(Exp(2016*Ln(2)))) * x1;
		second:=c1;
	end;
begin
if first() > second() then
	begin
		writeln('Yes');
		ans:=(first() - second()) / first();
		writeln(ans);
 	end
else
	begin
		writeln('No');
		ans:=(second() - first()) / second();
		writeln(ans);
	end; 	
end.