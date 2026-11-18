program luaslingkaran;
uses crt;

function Luas(r : real): real;
begin 
Luas := 3.14 * r * r;
end;

begin
clrscr;

writeln('Luas Lingkaran : ', Luas(7):0:2);

readln;

end.