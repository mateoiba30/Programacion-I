program p2e1b;
uses crt;
var
  numero,x,resto,max:integer;
begin
  max:=0;
  write('Ingrese un numero: ');
  read(numero);

  while(numero<>0)do begin
    x:= numero MOD 10;
    if(x>max)then
      max:=x;

    if(x MOD 3=0) then begin
      write(x,' ');
      readkey();
    end;
    numero:=numero DIV 10;
  end;
  write('El mayor digito es de: ',max);
  readkey();
end.
