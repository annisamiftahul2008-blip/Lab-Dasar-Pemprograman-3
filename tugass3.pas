program SistemPemesananMakanan;

var
  kode, jumlah, status: integer;
  harga, totalHarga, diskon, totalBayar: real;
  namaMakanan: string;

begin
  writeln('=== SISTEM PEMESANAN MAKANAN ===');
  writeln;

  write('Masukkan kode makanan (1-4): ');
  readln(kode);

  { Menentukan makanan dan harga menggunakan CASE }
  case kode of
    1:
      begin
        namaMakanan := 'Nasi Goreng';
        harga := 20000;
      end;
    2:
      begin
        namaMakanan := 'Mie Goreng';
        harga := 18000;
      end;
    3:
      begin
        namaMakanan := 'Ayam Geprek';
        harga := 25000;
      end;
    4:
      begin
        namaMakanan := 'Steak';
        harga := 50000;
      end;
  else
    begin
      writeln('Kode makanan tidak valid.');
      readln;
      exit;
    end;
  end;

  write('Masukkan jumlah pesanan: ');
  readln(jumlah);

  { Validasi jumlah pesanan }
  if jumlah <= 0 then
  begin
    writeln('Jumlah pesanan tidak valid.');
  end
  else if jumlah > 10 then
  begin
    writeln('Pesanan terlalu banyak.');
  end
  else
  begin
    write('Masukkan status pelanggan (1=Member, 2=Non-member): ');
    readln(status);

    totalHarga := harga * jumlah;

    { Menentukan diskon }
    if status = 1 then
    begin
      if totalHarga >= 100000 then
        diskon := totalHarga * 0.15
      else if totalHarga >= 50000 then
        diskon := totalHarga * 0.10
      else
        diskon := totalHarga * 0.05;
    end
    else if status = 2 then
    begin
      if totalHarga >= 100000 then
        diskon := totalHarga * 0.05
      else
        diskon := 0;
    end
    else
    begin
      writeln('Status pelanggan tidak valid.');
      readln;
      exit;
    end;

    totalBayar := totalHarga - diskon;

    { Menampilkan hasil }
    writeln;
    writeln('=== HASIL PEMESANAN ===');
    writeln('Makanan       : ', namaMakanan);
    writeln('Harga makanan : Rp', harga:0:0);
    writeln('Jumlah pesanan: ', jumlah);
    writeln('Total harga   : Rp', totalHarga:0:0);
    writeln('Diskon        : Rp', diskon:0:0);
    writeln('Total bayar   : Rp', totalBayar:0:0);
  end;

  readln;
end.