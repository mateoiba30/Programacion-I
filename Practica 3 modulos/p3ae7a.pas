program p3ae7a;
uses crt;
procedure prompeso(personas:integer);
var
  i,peso,sumap:integer;
  pprom:real;
begin
  sumap:=0;
  for i:=1 to personas do begin
    write('Ingresse peso de la persona: ', i,': ');
    read(peso);
    sumap:=sumap+peso;
  end;
  pprom:=sumap/personas;
  write(pprom:2:2);
  readkey();
end;
var
  a:integer;
begin
  writeln('Ingrese la cantidad de personas a evaluar:');
  read(a);
  prompeso(a);
end.

