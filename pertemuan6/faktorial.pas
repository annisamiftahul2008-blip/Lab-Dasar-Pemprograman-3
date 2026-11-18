program FaktorialRekursif;

function Faktorial(n: integer): longint;
begin
  if n = 0 then
    Faktorial := 1
  else
    Faktorial := n * Faktorial(n - 1);
end;

var
  nilai: integer;

begin
  write('Masukkan nilai: ');
  readln(nilai);

  if nilai < 0 then
    writeln('Bilangan tidak boleh negatif!')
  else
    writeln('Hasil faktorial: ', Faktorial(nilai));

  readln;
end.