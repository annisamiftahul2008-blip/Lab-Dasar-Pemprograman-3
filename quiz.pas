program sisauangmahasiswa;

var
  nama: string;
  uangawal, hargamakanan, hargaminuman: real;
  totalpengeluaran, sisauang: real;

begin
  writeln('menghitung sisa uang mahasiswa');

  write('masukkan nama mahasiswa: ');
  readln(nama);

  write('masukkan uang awal: ');
  readln(uangawal);

  write('Masukkan harga makanan: ');
  readln(hargamakanan);

  write('masukkan harga minuman: ');
  readln(hargaminuman);

  totalpengeluaran := hargamakanan + hargaminuman;
  sisauang := uangawal - totalpengeluaran;

  writeln;
  writeln('nama mahasiswa: ', nama);
  writeln('sisa uang: ', sisauang:0:2);

end.