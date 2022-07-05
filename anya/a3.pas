program byu1;
var a:real;
begin;
write('a: ');
readln(a);
if a >= 1000 then a:=a-a/100*15;
if not (a>=1000) then a:=a;
write('summa: ',a);
end.