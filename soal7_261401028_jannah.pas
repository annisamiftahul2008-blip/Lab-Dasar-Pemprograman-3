program Soal7;

var
  kode: char;
  jam: integer;
  tarif: longint;

begin
  write('Masukkan kode kendaraan (M/K/B): ');
  readln(kode);

  write('Masukkan lama parkir (jam): ');
  readln(jam);

  case kode of

    'M', 'm':
    begin
      if jam > 10 then
        tarif := 30000
      else if jam <= 1 then
        tarif := 5000
      else
        tarif := 5000 + ((jam - 1) * 3000);

      writeln('Tarif parkir Mobil = Rp', tarif);
    end;

    'K', 'k':
    begin
      if jam > 10 then
        tarif := 10000
      else if jam <= 1 then
        tarif := 2000
      else
        tarif := 2000 + ((jam - 1) * 1000);

      writeln('Tarif parkir Motor = Rp', tarif);
    end;

    'B', 'b':
    begin
      if jam > 10 then
        tarif := 50000
      else if jam <= 1 then
        tarif := 10000
      else
        tarif := 10000 + ((jam - 1) * 5000);

      writeln('Tarif parkir Bus = Rp', tarif);
    end;

  else
    writeln('Kode kendaraan tidak valid.');

  end;

  readln;
end.