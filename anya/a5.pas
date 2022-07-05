program kalkulator; 
var a,b,r: integer; 
begin 
write ('1-сложение 2-вычитаение 3-умножение 4-деление 5-возведение во вторую степень 6-извлечение квадратного корня'); 
read(r); 
if r = 1 then 
writeln('a'); 
read(a); 
writeln('b'); 
read(b); 
write (a+b); 
if r=2 then 
writeln('a'); 
read(a); 
writeln('b'); 
read(b); 
write (a-b); 
if r=3 then 
writeln('a'); 
read(a); 
writeln('b'); 
read(b); 
write (a*b); 
if r=4 then 
writeln('a'); 
read(a); 
writeln('b'); 
read(b); 
write (a/b); 
if r=5 then 
writeln('a'); 
read(a); 
write (sqr(a)); 
if r=6 then 
writeln('a'); 
read(a); 
write (sqrt(a)); 
end.
