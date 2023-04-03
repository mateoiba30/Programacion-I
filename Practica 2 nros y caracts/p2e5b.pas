program p2e5b;
uses crt;
var
  caracteres:integer;
  cadena:char;
begin
  caracteres:=0;
  writeln('Ingrese una cadena de caracteres que finalice con un punto');
  readkey();
  write('---> ');
  read(cadena);

  while (cadena<>'.') do begin
    if(cadena='A')then
      caracteres:=caracteres+1;
    read(cadena);
  end;

  write('La cantidad de letras A es de: ',caracteres);
  readkey();
end.
