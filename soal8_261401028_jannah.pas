program Soal8;

var
  golongan: char;
  jamKerja, lembur: integer;
  gajiPokok, gajiLembur, bonus, totalGaji: longint;

begin
  write('Masukkan Golongan (A/B/C): ');
  readln(golongan);

  write('Masukkan total jam kerja: ');
  readln(jamKerja);

  case golongan of

    'A', 'a':
      gajiPokok := 1500000;

    'B', 'b':
      gajiPokok := 2000000;

    'C', 'c':
      gajiPokok := 2500000;

  else
    begin
      writeln('Golongan tidak valid.');
      readln;
      exit;
    end;
  end;

  { Menghitung lembur }
  if jamKerja > 40 then
    lembur := jamKerja - 40
  else
    lembur := 0;

  gajiLembur := lembur * 20000;

  { Bonus khusus golongan C }
  bonus := 0;

  if ((golongan = 'C') or (golongan = 'c')) and (jamKerja > 50) then
    bonus := 100000;

  totalGaji := gajiPokok + gajiLembur + bonus;

  writeln;
  writeln('Gaji Pokok : Rp', gajiPokok);
  writeln('Lembur     : Rp', gajiLembur);
  writeln('Bonus      : Rp', bonus);
  writeln('Total Gaji : Rp', totalGaji);

  readln;
end.