program hit;
uses crt;

var
a, b : integer;

begin
clrscr;
a := 5;
b := 2;
writeln('a And b : ', a and b);
writeln('a or bb : ', a or b);
writeln('a or b :; ', a xor b);
writeln('not a : ', not a);
writeln('a shl b : ', a shl b);
writeln('a shr b : ', a shr b);
end.