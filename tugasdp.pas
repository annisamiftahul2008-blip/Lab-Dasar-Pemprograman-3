program Angka1Sampai100;

var
 i: integer;

begin
 for i := 1 to 100 do
 begin
  if (i mod 3 <> 0) or (i mod 5 <> 0) then
   writeln(i);
 end;
end.