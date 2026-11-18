program HargaMakananPointer;

type
  PMakanan = ^TMakanan;
  TMakanan = record
    Nama: string[50];
    Harga: LongInt;
    Next: PMakanan;
  end;

var
  Head, Tail, P, Current: PMakanan;
  Min, Max: PMakanan;
  N, i: Integer;

begin
  Head := nil;
  Tail := nil;

  Write('Masukkan jumlah makanan: ');
  ReadLn(N);

  for i := 1 to N do
  begin
    New(P);

    Write('Masukkan nama makanan: ');
    ReadLn(P^.Nama);

    Write('Masukkan harga makanan: ');
    ReadLn(P^.Harga);

    P^.Next := nil;

    if Head = nil then
    begin
      Head := P;
      Tail := P;
    end
    else
    begin
      Tail^.Next := P;
      Tail := P;
    end;
  end;

  Min := Head;
  Max := Head;

  Current := Head;

  while Current <> nil do
  begin
    if Current^.Harga < Min^.Harga then
      Min := Current;

    if Current^.Harga > Max^.Harga then
      Max := Current;

    Current := Current^.Next;
  end;

  Writeln;
  Writeln('===== HASIL PENCARIAN =====');

  Writeln('Makanan termurah : ', Min^.Nama);
  Writeln('Harga termurah   : Rp', Min^.Harga);

  Writeln;

  Writeln('Makanan termahal : ', Max^.Nama);
  Writeln('Harga termahal   : Rp', Max^.Harga);

  Current := Head;

  while Current <> nil do
  begin
    P := Current;
    Current := Current^.Next;
    Dispose(P);
  end;

  ReadLn;
end.