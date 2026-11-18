program HasilStudi;
uses crt;

type
  MataKuliah = record
    nama  : string;
    sks   : integer;
    huruf : string;
    bobot : real;
  end;

  Mahasiswa = record
    nama     : string;
    nim      : string;
    jmlMK    : integer;
    mk       : array[1..20] of MataKuliah;
  end;

var
  mhs : array[1..50] of Mahasiswa;
  n, i, j : integer;
  totalSKS : integer;
  totalBobot, ips : real;

function KonversiNilai(h: string): real;
begin
  h := upcase(h[1]) + copy(h, 2, length(h) - 1);
  if      h = 'A'  then KonversiNilai := 4
  else if h = 'B+' then KonversiNilai := 3.5
  else if h = 'B'  then KonversiNilai := 3
  else if h = 'C+' then KonversiNilai := 2.5
  else if h = 'C'  then KonversiNilai := 2
  else if h = 'D'  then KonversiNilai := 1
  else                  KonversiNilai := 0;
end;

begin
  clrscr;
  write('Jumlah mahasiswa : '); readln(n);

  // ===== INPUT =====
  for i := 1 to n do
  begin
    writeln;
    writeln('--- Mahasiswa ke-', i, ' ---');
    with mhs[i] do
    begin
      write('Nama            : '); readln(nama);
      write('NIM             : '); readln(nim);
      write('Jumlah mata kuliah : '); readln(jmlMK);

      for j := 1 to jmlMK do
      begin
        writeln('  Mata kuliah ke-', j);
        write('  Nama MK : '); readln(mk[j].nama);
        write('  SKS     : '); readln(mk[j].sks);
        write('  Nilai   : '); readln(mk[j].huruf);
        mk[j].bobot := KonversiNilai(mk[j].huruf);
      end;
    end;
  end;

  // ===== OUTPUT =====
  for i := 1 to n do
  begin
    clrscr;
    totalSKS := 0;
    totalBobot := 0;
    with mhs[i] do
    begin
      writeln('HASIL STUDI MAHASISWA KE-', i);
      writeln('Nama : ', nama);
      writeln('NIM  : ', nim);
      writeln;
      for j := 1 to jmlMK do
      begin
        writeln(j, '. ', mk[j].nama, ' | SKS: ', mk[j].sks,
                ' | Nilai: ', mk[j].huruf, ' (', mk[j].bobot:0:1, ')');
        totalSKS   := totalSKS + mk[j].sks;
        totalBobot := totalBobot + (mk[j].bobot * mk[j].sks);
      end;
      if totalSKS > 0 then ips := totalBobot / totalSKS else ips := 0;
      writeln;
      writeln('Total SKS : ', totalSKS);
      writeln('IPS       : ', ips:0:2);
    end;
    writeln;
    write('Tekan Enter untuk lanjut...');
    readln;
  end;
end.      