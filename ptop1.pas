program ptop;
uses crt;

var 
angka : integer;
p : ^integer;
pp: ^Pinteger;

begin

angka := 7;
p :=@angka;// alamat var angka
pp:=@p;
writeln ('angkanya :', angka);
writeln('pointer 1 :', p^);// ambil nilai from var angka
writeln('pointer to another pointer :', pp^^);
end.