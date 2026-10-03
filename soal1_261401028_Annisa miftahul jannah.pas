program Soal1;

var
  N, i: integer;
  harga, total, diskon, bayar: real;
  persen: real;

begin
  total := 0;

  write('Masukkan jumlah barang: ');
  readln(N);

  for i := 1 to N do
  begin
    write('Masukkan harga barang ke-', i, ': Rp');
    readln(harga);
    total := total + harga;
  end;

  { Menentukan diskon }
  if total < 100000 then
  begin
    persen := 0;
  end
  else if total < 500000 then
  begin
    persen := 10;
  end
  else
  begin
    persen := 20;
  end;

  diskon := total * persen / 100;
  bayar := total - diskon;

  writeln;
  writeln('===== RINCIAN BELANJA =====');
  writeln('Total Sebelum Diskon : Rp', total:0:2);
  writeln('Diskon               : ', persen:0:0, '%');
  writeln('Besar Diskon         : Rp', diskon:0:2);
  writeln('Total Bayar Akhir    : Rp', bayar:0:2);

  readln;
end.