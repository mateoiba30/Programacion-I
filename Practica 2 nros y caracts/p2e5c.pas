program p2e5c;
uses crt;
var
  caracteres,sa,La:integer;
  cadena,anterior:char;
begin
  anterior:='x';
  caracteres:=0;
  La:=0;
  sa:=0;

  writeln('Ingrese una cadena de caracteres que finalice con un punto');
  readkey();
  write('---> ');
  read(cadena);

  while (cadena<>'.') do begin
    if(cadena='A')then
      La:=La+1;
    caracteres:=caracteres+1;

    if(anterior='s')and(cadena='a')then
      sa:=sa+1;

    anterior:=cadena;
    read(cadena);
  end;

  writeln('La cantidad de caracteres es de: ',caracteres);
  readkey();
  writeln('La cantidad de letras "A" es de: ',La);
  readkey();
  writeln('La cantidad de letras "s" seguidas de una "a" es de: ',sa);
  readkey();
end.
