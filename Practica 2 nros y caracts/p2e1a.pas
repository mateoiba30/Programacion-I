program p2e1a;
uses crt;
var
  numero,x,resto:integer;
begin
  write('Ingrese un numero: ');
  read(numero);

  while(numero<>0)do begin
    x:= numero MOD 10;
    if(x MOD 3=0) then begin
      write(x,' ');
      readkey();
    end;
    numero:=numero DIV 10;
  end;
end.

