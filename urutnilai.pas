program UrutNilaiUAS;
uses crt;

var
  nilai: array[1..10] of real;
  n, i, j: integer;
  temp: real;

begin
  clrscr;

  writeln('=== PENGURUTAN NILAI UAS ===');

  write('Jumlah mahasiswa (1-10): ');
  readln(n);

  if (n < 1) or (n > 10) then
  begin
    writeln('Jumlah mahasiswa harus 1 sampai 10.');
  end
  else
  begin
    for i := 1 to n do
    begin
      write('Nilai UAS mahasiswa ke-', i, ': ');
      readln(nilai[i]);
    end;

    for i := 1 to n - 1 do
      for j := 1 to n - i do
        if nilai[j] > nilai[j+1] then
        begin
          temp := nilai[j];
          nilai[j] := nilai[j+1];
          nilai[j+1] := temp;
        end;

    writeln;
    writeln('Nilai UAS dari terendah ke tertinggi:');

    for i := 1 to n do
      writeln(nilai[i]:0:2);
  end;

  readln;
end.