program a2;
var a: array [1..100000] of Longint;
n, i, j, min: Longint;
inputs, outputs: text;

begin
	assign(inputs, 'input.txt');
	reset(inputs);
	read(inputs, n);
	for i:= 1 to n do
		begin
			read(inputs, a[i]);
		end;
	close(inputs);
	min:= 40001;
	for i:= 1 to n do
		begin
			for j:= 1 to n do
				begin
					if (i = j) then
						continue;
					if ((min > a[i] * a[j]) and ((a[i] * a[j]) mod 2 <> 0)) then
						min:= a[i] * a[j];
				end;
		end;
	assign(outputs, 'output.txt');
	rewrite(outputs);
	if (min = 40001) then
		write(outputs, 'нет')
	else
		write(outputs, min);
	close(outputs);
end.