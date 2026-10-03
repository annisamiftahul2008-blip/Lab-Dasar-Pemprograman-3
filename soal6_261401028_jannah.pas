program Soal6;

var
  tugas, uts, uas, kehadiran, nilaiAkhir: real;
  status, indeks: char;

begin
  write('Masukkan Nilai Tugas: ');
  readln(tugas);

  write('Masukkan Nilai UTS: ');
  readln(uts);

  write('Masukkan Nilai UAS: ');
  readln(uas);

  write('Masukkan Kehadiran (%): ');
  readln(kehadiran);

  nilaiAkhir := (tugas * 0.30) +
                (uts * 0.30) +
                (uas * 0.40);

  writeln;
  writeln('Nilai Akhir = ', nilaiAkhir:0:2);

  if (nilaiAkhir >= 60) and (kehadiran >= 80) then
    status := 'L'
  else
    status := 'T';

  if nilaiAkhir >= 85 then
    indeks := 'A'
  else if nilaiAkhir >= 75 then
    indeks := 'B'
  else if nilaiAkhir >= 60 then
    indeks := 'C'
  else if nilaiAkhir >= 50 then
    indeks := 'D'
  else
    indeks := 'E';

  if status = 'L' then
    writeln('Status: LULUS')
  else
    writeln('Status: TIDAK LULUS');

  writeln('Indeks Huruf: ', indeks);

  readln;
end.