program Fibonacci;

var
  n, i: integer;
  a, b, c: longint;

begin
  write('Masukkan jumlah suku: ');
  readln(n);

  a := 1;
  b := 1;

  write('Deret Fibonacci: ');

  for i := 1 to n do
  begin
    if i = 1 then
      write(a, ' ')
    else if i = 2 then
      write(b, ' ')
    else
    begin
      c := a + b;
      write(c, ' ');
      a := b;
      b := c;
    end;
  end;

  writeln;
  readln;
end.