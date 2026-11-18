program pointer;
uses crt;

var 
angka : integer;
pAngka : ^integer; // caret di depan nunjukin kalau variabel itu merupakan pointer 

begin
angka := 10;

pAngka := @angka;

writeln ('Nilai Angkamya : ', angka);
writeln('Nilai pointernya : ', pAngka^); // ambil isi dr alamat yg dituju dr pointer

end.