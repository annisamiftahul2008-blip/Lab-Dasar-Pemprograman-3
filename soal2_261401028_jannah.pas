program Soal2;

var
  password: string;
  percobaan: integer;
  berhasil: boolean;

begin
  percobaan := 0;
  berhasil := false;

  repeat
    percobaan := percobaan + 1;

    write('Masukkan kata sandi: ');
    readln(password);

    if password = 'pascal123' then
    begin
      writeln('Login Berhasil! Selamat Datang');
      berhasil := true;
      break;
    end
    else
    begin
      writeln('Kata sandi salah!');
    end;

  until percobaan = 3;

  if not berhasil then
    writeln('Akses Ditolak! Akun Terkunci.');

  readln;
end.