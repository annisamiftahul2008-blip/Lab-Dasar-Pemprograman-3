program Soal4;

var
  pilihan: integer;
  a, b, hasil: real;
  hasilInt: integer;
  ulang: char;

begin
  repeat
    writeln;
    writeln('===== KALKULATOR =====');
    writeln('1. Penjumlahan');
    writeln('2. Pengurangan');
    writeln('3. Perkalian');
    writeln('4. Pembagian Real');
    writeln('5. DIV & MOD');
    writeln('======================');

    write('Pilih operasi (1-5): ');
    readln(pilihan);

    write('Masukkan angka pertama: ');
    readln(a);

    write('Masukkan angka kedua: ');
    readln(b);

    writeln;

    case pilihan of

      1:
      begin
        hasil := a + b;
        writeln('Hasil Penjumlahan = ', hasil:0:2);
      end;

      2:
      begin
        hasil := a - b;
        writeln('Hasil Pengurangan = ', hasil:0:2);
      end;

      3:
      begin
        hasil := a * b;
        writeln('Hasil Perkalian = ', hasil:0:2);
      end;

      4:
      begin
        if b <> 0 then
        begin
          hasil := a / b;
          writeln('Hasil Pembagian = ', hasil:0:2);
        end
        else
          writeln('Error: Tidak dapat membagi dengan 0.');
      end;

      5:
      begin
        { DIV dan MOD membutuhkan bilangan integer }
        if b <> 0 then
        begin
          hasilInt := trunc(a) div trunc(b);

          writeln('Hasil DIV = ', hasilInt);
          writeln('Hasil MOD = ', trunc(a) mod trunc(b));
        end
        else
          writeln('Error: DIV dan MOD dengan 0 tidak diperbolehkan.');
      end;

    else
      writeln('Pilihan operasi tidak valid.');

    end;

    writeln;
    write('Apakah ingin melakukan perhitungan lagi? (Y/T): ');
    readln(ulang);

  until (ulang = 'T') or (ulang = 't');

  writeln;
  writeln('Program selesai.');
  readln;
end.