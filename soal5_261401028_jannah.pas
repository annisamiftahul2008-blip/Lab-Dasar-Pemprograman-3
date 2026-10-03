program RekapNilai;

uses crt;

var
  M, N, i, j : integer;
  nilai, total, rata : real;
  jmlLulus, jmlTidakLulus : integer;

begin
  clrscr;
  jmlLulus := 0;
  jmlTidakLulus := 0;

  { 1. Input jumlah mahasiswa dan jumlah tugas }
  write('Masukkan jumlah mahasiswa (M): ');
  readln(M);
  write('Masukkan jumlah tugas (N)    : ');
  readln(N);
  writeln;

  { 2. Nested loop input nilai }
  for i := 1 to M do
  begin
    writeln('Mahasiswa ke-', i);
    total := 0;

    for j := 1 to N do
    begin
      write('  Nilai tugas ke-', j, ': ');
      readln(nilai);
      total := total + nilai;
    end;

    { 3. Hitung rata-rata dan tentukan kelulusan }
    rata := total / N;

    { 4. Tampilkan rata-rata dan status }
    writeln('  Rata-rata : ', rata:0:2);
    if rata >= 65 then
    begin
      writeln('  Status    : LULUS');
      jmlLulus := jmlLulus + 1;
    end
    else
    begin
      writeln('  Status    : TIDAK LULUS');
      jmlTidakLulus := jmlTidakLulus + 1;
    end;
    writeln;
  end;

  { Total mahasiswa lulus dan tidak lulus }
  writeln('==============================');
  writeln('Total mahasiswa LULUS       : ', jmlLulus);
  writeln('Total mahasiswa TIDAK LULUS : ', jmlTidakLulus);
  writeln('==============================');

  readln;
end.