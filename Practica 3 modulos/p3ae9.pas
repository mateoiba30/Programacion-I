program p3ae9;
uses crt;
procedure analizar(var cadena:char; var pa:integer;anterior:char);
begin
  while(cadena<>'.')and(cadena<>' ')do begin
    if(cadena='a')and(anterior='p')then
      pa:=pa+1;
    anterior:=cadena;
    read(cadena);
  end;
end;
var
  pa:integer;
  cadena,anterior:char;
begin
  pa:=0;
  anterior:='x';
  writeln('Ingrese una cadena de caracteres');
  readkey();
  write('(finaliza con "."): ');
  read(cadena);

  while(cadena=' ')do
    read(cadena);

  while (cadena<>'.')do begin
    analizar(cadena,pa,anterior);
    while(cadena=' ')do
      read(cadena);
  end;

  write(pa,' palabras cumplen la condicion');
  readkey();
end.

