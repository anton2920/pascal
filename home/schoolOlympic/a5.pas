program a5;
uses sysutils;
var vse: string;
b, k, i: Longint;
inputs, outputs: text;

begin
	vse:= '0';
	assign(inputs, 'input.txt');
	reset(inputs);
	read(inputs, b);
	vse:= inttostr(strtoint(vse) + b);
	read(inputs, b);
	vse:= inttostr(strtoint(vse) + b);
	close(inputs);
	k:= 0;
	for i:= 2 to Length(vse) do
		if (vse[i - 1] = vse[i]) then
			begin
				k:= 1;
				break;
			end;
	assign(outputs, 'output.txt');
	rewrite(outputs);
	if (k = 1) then
		write(outputs, 'есть')
	else
		write(outputs, 'нет');
	close(outputs);
end.
