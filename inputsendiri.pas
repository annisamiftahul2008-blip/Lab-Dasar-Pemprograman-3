program perkenalan;
uses crt;

procedure nama (teks : string);
begin
write ('Nama kamu adalah: ', teks);
end;

var 
a : string;

begin
clrscr;

write('Masukkan nama : ');
readln(a);

nama(a);

readln;

end.