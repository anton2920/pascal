program a4;
uses sysutils;
var a, k, k1, i: longint;
inputs, outputs: text;
b: string;

function tobin(x: integer): string;
	var i: longint;
c, d: string;
begin
	d:= '';
	c:= '';
	repeat
		c:= c + inttostr(x mod 2);
		x:= x div 2;
	until x = 1;
	c:= c + '1';
	for i:= Length(c) downto 1 Do
		d:= d + c[i];
	tobin:= d;
end;

begin
	assign(inputs, 'input.txt');
	reset(inputs);
	read(inputs, a);
	close(inputs);
	b:= tobin(a);
	k:= 0;
	k1:= 0;
	for i:= 1 to Length(b) Do
		begin
			if (strtoint(b[i]) = 1) then
				k:= k + 1
			else
				k:= 0;
			if (k > k1) then
				k1:= k;
		end;
	assign(outputs, 'output.txt');
	rewrite(outputs);
	if (k1 > k) then
		write(outputs, k1)
	else
		write(outputs, k);
	close(outputs);
end.