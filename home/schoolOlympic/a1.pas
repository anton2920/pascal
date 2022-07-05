program a1;
uses sysutils;
var a, i, i1, k:Longint;
inputs, outputs: text;

begin
	assign(inputs, 'input.txt');
	reset(inputs);
	read(inputs, k);
	close(inputs);
	a:= 0;
	i:= 1;
	while (a <> k) do
		begin
			i:= i + 1;
			a:= 0;
			i1:= i;
			while (i1 <> 1) do
				begin
					if (i1 mod 3 = 0) then
						begin
							i1:= i1 div 3;
							a:= a + 1;
						end
					else
						begin
							i1:= i1 - 1;
							a:= a + 1;
						end;
				end;
		end;
	assign(outputs, 'output.txt');
	rewrite(outputs);
	write(outputs, i);
	close(outputs);
end.