program p2e1c;
uses crt;
var
  numero,x,i:integer;
begin
  write('Ingrese un numero: ');
  read(numero);

  For i:=1 to 80 do begin
    while(numero<>0)do begin
      x:= numero MOD 10;
      if(x MOD 2=0) then begin
        write(x,' ');
        readkey();
      end;
      numero:=numero DIV 10;
    end;
    writeln('');
    readkey();
    write('Ingrese otro numero: ');
    read(numero);
  end;
end.
