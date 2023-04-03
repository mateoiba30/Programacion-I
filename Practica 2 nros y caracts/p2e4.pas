program p2e4;
uses crt;
var
  y,i,x,nro,digitos:integer;
begin
  digitos:=0;
  write('Ingrese un numero: ');
  read(nro);
  x:=nro;

  while(x<>0) do begin
    x:=x DIV 10;
    digitos:=digitos+1;
  end;

  For i:=1 to digitos do begin
    y:=nro MOD 10;
    write(y);
    readkey();
    nro:=nro DIV 10;
  end;
end.

