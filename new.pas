 uses crt;

// var
//  .......
//  .......
//  ..

label a, b, c;

begin
    clrscr;

    writeln('Aku write 1');
    goto b;

    a:
    writeln('Aku write 2');
    goto c;

    b: 
    writeln('Aku write 3');
    goto a;

    c:
    writeln('Aku write 4');
end.