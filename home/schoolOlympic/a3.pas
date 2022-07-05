program a3;
uses sysutils;
var a: array [1..100000] of char;
d, i, i1, k, maxi, c1: Longint;
b, c: String;
j: char;
inputs, outputs: text;

begin
	assign(inputs, 'input.txt');
	reset(inputs);
	read(inputs, b);
	close(inputs);
	maxi:= 0;
	d:= strtoint(b);
	for i:= 1 to Length(b) Do
		begin
			for i1:= 1 to Length(b) Do
				a[i1]:= b[i1];
			for j:= '1' to '9' do
				begin
					a[i]:= j;
					c:= '';
					for k:= 1 to Length(b) do
						c:= c + a[k];
					c1:= strtoint(c);
					if ((c1 mod 3 = 0) and (c1 <> d) and (c1 > maxi)) then
						maxi:= c1;
				end;
		end;
	assign(outputs, 'output.txt');
	rewrite(outputs);
	write(outputs, maxi);
	close(outputs);
end.