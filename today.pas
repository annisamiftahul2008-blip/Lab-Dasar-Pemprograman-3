program TahunKabisat;

var
 tahun:integer;

begin
 write('Masujan tahun');
 readln(tahun);

 if (tahun mod 400 =0) or
    ((tahun mod 4 =) and(tahun mod 100<> 0)) then
    writeln(tahun,'merupakan tahyn kabisat')
    writeln(tahun,'bukan tahun kabisat');
    readln;
    end;
end.