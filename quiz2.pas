program nilaiakhirmahasiswa;

var
  nama: string;
  nilaitugas, nilaiuts, nilaiuas: real;
  tugas, uts, uas, nilaiakhir: real;

begin
  writeln('menghitung nilai akhir mahasiswa');

  write('masukkan nama mahasiswa: ');
  readln(nama);

  write('masukkan nilai tugas: ');
  readln(nilaitugas);

  write('masukkan nilai uts: ');
  readln(nilaiUTS);

  write('masukkan nilai uas: ');
  readln(nilaiUAS);

  tugas := nilaitugas * 30 / 100;
  uts := nilaiuts * 30 / 100;
  uas := nilaiuas * 40 / 100;

  nilaiakhir := tugas + uts + uas;

  writeln;
  writeln('Nama mahasiswa: ', nama);
  writeln('Nilai akhir: ', nilaiakhir:0:2);

end.