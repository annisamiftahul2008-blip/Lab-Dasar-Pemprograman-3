program Soal9;

var
  tahun, bulan, jumlahHari: integer;
  kabisat: boolean;

begin
  write('Masukkan tahun: ');
  readln(tahun);

  write('Masukkan nomor bulan (1-12): ');
  readln(bulan);

  { Menentukan tahun kabisat }
  kabisat := ((tahun mod 400 = 0) or
             ((tahun mod 4 = 0) and (tahun mod 100 <> 0)));

  case bulan of

    1, 3, 5, 7, 8, 10, 12:
      jumlahHari := 31;

    4, 6, 9, 11:
      jumlahHari := 30;

    2:
      begin
        if kabisat then
          jumlahHari := 29
        else
          jumlahHari := 28;
      end;

  else
    begin
      writeln('Nomor bulan tidak valid.');
      readln;
      exit;
    end;

  end;

  writeln('Jumlah hari = ', jumlahHari);

  if kabisat then
    writeln('Tahun ', tahun, ' adalah tahun kabisat.')
  else
    writeln('Tahun ', tahun, ' bukan tahun kabisat.');

  readln;
end.