program nilaiakhir;

var 
nama: string;
nilai_tugas, nilai_uts, nilai_uas: real;
nilai_akhir: real;

begin

write('masukkan nama mahasiswa :');
readln(nama);
write('masukkan nilai tugas :');
readln(nilai_tugas);
write('masukkan nilai uts :');
readln(nilai_uts);
write('masukkan nilai uas :');
readln(nilai_uas);

nilai_akhir := (nilai_tugas * 0.30) + (nilai_uts * 0.30) +  (nilai_uas * 0.40);
writeln;
writeln('nilai akhir :  ', nilai_akhir:0:2);
end.