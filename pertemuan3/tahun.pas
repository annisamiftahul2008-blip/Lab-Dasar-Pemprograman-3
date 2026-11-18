program tahun;
uses crt;

var 
 tahun: integer;

 begin
 clrscr;
 write ('masukkan tahun : ');
 readln (tahun);

 if (tahun mod 400 = 0) or ((tahun mod 4= 0)and (tahun mod 100 <> 0))then
 writeln (tahun, 'bukan merupakan kabisat.')
 else
 writeln(tahun, ' bukan merupakan tahun kabisat.');

 readln;
 end.