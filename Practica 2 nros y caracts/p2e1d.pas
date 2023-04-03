program p2e1d;
uses crt;
var
  numero,x:integer;
begin
  write('Ingrese un numero: ');
  read(numero);

  While (numero<>-1) do begin
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
