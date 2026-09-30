program pola;

var
 i,j:integer;

begin
 for i := 5 downto 1 do
 begin 
  for j := 1 to i do
   write('*');
  writeln;
 end;
end.
