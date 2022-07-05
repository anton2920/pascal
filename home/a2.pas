var a: array [1..10000, 1..10000] of integer;
b: array [1..5, 1..5] of integer;
i,s,n:integer;
st:string;
j:byte;
input,output:text;
begin
	randomize;
    st:='';
	s:=0;
	N:=5;
	for i:=1 to N do
		begin
			for j:=1 to N do
				begin
					b[i,j]:=random(100)+1;
					write(b[i,j]:4);
					s:=s+b[i,j];
				end;
			writeln;
		end;
	writeln('Summ is: ',s);

	writeln;
	assign(input, 'array.txt');
	reset(input);
	s:=0;
	n:=0;
    i:=1;
    j:=1;
	while not (eof(input)) do
		begin
            readln(input, s);;
            for j:=1 to Length (s) do
                begin
                     a[i,j]:=(StrToInt(st[j]));
                     write(a[i,j], ' ');
                     s:=s + a[i,j];
				end;
			writeln;
            inc(i);
		end;
	close(input);
    writeln;
    for i:=1 to 5 do begin
        for j:=1 to 6 do
            write(a[i,j], ' ');
        writeln;
        end;
    writeln;
	writeln('The file summ is: ', s);
end.
