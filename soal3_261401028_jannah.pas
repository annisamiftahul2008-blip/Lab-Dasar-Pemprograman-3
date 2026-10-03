program Soal3;

var
  N, pilihan, i: integer;

begin
  write('Masukkan nilai N: ');
  readln(N);

  writeln;
  writeln('Pilih kategori deret:');
  writeln('1. Ganjil');
  writeln('2. Genap');
  write('Pilihan: ');
  readln(pilihan);

  writeln;
  writeln('Hasil deret:');

  i := 1;

  while i <= N do
  begin
    { Lewati angka yang tidak sesuai kategori }
    if (pilihan = 1) and (i mod 2 = 0) then
    begin
      i := i + 1;
      continue;
    end;

    if (pilihan = 2) and (i mod 2 <> 0) then
    begin
      i := i + 1;
      continue;
    end;

    { Lewati kelipatan 5 }
    if i mod 5 = 0 then
    begin
      i := i + 1;
      continue;
    end;

    write(i, ' ');

    i := i + 1;
  end;

  writeln;
  readln;
end.