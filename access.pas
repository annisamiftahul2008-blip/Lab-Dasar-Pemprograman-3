program aksesalamat;
uses crt;

var 
angka : integer;
i : ^word;
ptrangka : ^integer;

begin
clrscr;

angka := 10;
writeln ('Angkanya : ', angka);

ptrangka := @angka; //AMBIL ALAMAT
writeln(ptrangka^); //AMBIL ISI DR ALAMAT YG DITUJU

i := addr(ptrangka);
writeln(i^);

end.