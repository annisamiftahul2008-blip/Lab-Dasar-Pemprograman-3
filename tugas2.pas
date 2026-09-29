program PenentuanBeasiswa;

var
  IPK: real;
  penghasilan, prestasi: integer;

begin
  writeln('=== PROGRAM PENENTUAN BEASISWA ===');

  write('Masukkan IPK: ');
  readln(IPK);

  write('Masukkan penghasilan orang tua (Rp): ');
  readln(penghasilan);

  write('Masukkan jumlah prestasi: ');
  readln(prestasi);

  writeln;

  { Jika IPK kurang dari 2,75 }
  if IPK < 2.75 then
    writeln('IPK Tidak Memenuhi Syarat')
  
  { Jika IPK memenuhi tetapi penghasilan terlalu tinggi }
  else if penghasilan > 7000000 then
    writeln('Penghasilan Tidak Memenuhi Syarat')
  
  { Beasiswa penuh }
  else if (IPK >= 3.75) and
          (penghasilan <= 5000000) and
          (prestasi >= 2) then
    writeln('Mendapatkan Beasiswa Penuh')
  
  { Beasiswa sebagian }
  else if (IPK >= 3.50) and
          (penghasilan <= 7000000) and
          (prestasi >= 1) then
    writeln('Mendapatkan Beasiswa Sebagian')
  
  { Selain kondisi di atas }
  else
    writeln('Tidak Mendapatkan Beasiswa');

  readln;
end.