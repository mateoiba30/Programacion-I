program p2e1e;
uses crt;
var
  numero,x,digitos:integer;
begin
  digitos:=0;
  write('Ingrese un numero: ');
  read(numero);

  While (digitos<100) do begin
    while(numero<>0)do begin
      x:= numero MOD 10;
      if(x MOD 3=0)and(x<>0) then begin
        write(x,' ');
        readkey();
      end;
      numero:=numero DIV 10;
      digitos:=digitos+1;
    end;
    writeln('');
    readkey();
    if(digitos<100)then begin
      write('Ingrese otro numero: ');
      read(numero);
    end;
  end;
end.
