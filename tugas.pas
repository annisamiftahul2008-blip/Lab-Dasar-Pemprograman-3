program PembelianTiketBioskop;

var
  jenisFilm, hari, jumlahTiket: integer;
  hargaTiket, hargaAwal, diskon, totalBayar: real;

begin
  writeln('=== PROGRAM PEMBELIAN TIKET BIOSKOP ===');
  
  writeln('Jenis Film:');
  writeln('1. Regular (Rp30.000)');
  writeln('2. 3D      (Rp45.000)');
  writeln('3. IMAX    (Rp60.000)');
  write('Pilih jenis film [1-3]: ');
  readln(jenisFilm);

  { Menentukan harga berdasarkan jenis film }
  case jenisFilm of
    1: hargaTiket := 30000;
    2: hargaTiket := 45000;
    3: hargaTiket := 60000;
  else
    begin
      writeln('Jenis film tidak valid!');
      halt;
    end;
  end;

  writeln;
  writeln('Hari:');
  writeln('1. Senin-Kamis');
  writeln('2. Jumat');
  writeln('3. Sabtu-Minggu');
  write('Pilih hari [1-3]: ');
  readln(hari);

  { Tambahan harga berdasarkan hari }
  case hari of
    1: hargaTiket := hargaTiket;
    2: hargaTiket := hargaTiket + 5000;
    3: hargaTiket := hargaTiket + 10000;
  else
    begin
      writeln('Hari tidak valid!');
      halt;
    end;
  end;

  write('Jumlah tiket: ');
  readln(jumlahTiket);

  { Menghitung harga awal }
  hargaAwal := hargaTiket * jumlahTiket;

  { Menentukan diskon }
  if hargaAwal >= 200000 then
    diskon := hargaAwal * 0.10
  else if hargaAwal >= 100000 then
    diskon := hargaAwal * 0.05
  else
    diskon := 0;

  { Menghitung total yang harus dibayar }
  totalBayar := hargaAwal - diskon;

  writeln;
  writeln('=== HASIL PEMBELIAN ===');
  writeln('Harga awal  : Rp', hargaAwal:0:0);
  writeln('Diskon      : Rp', diskon:0:0);
  writeln('Total bayar : Rp', totalBayar:0:0);

end.