program p3ae7a;
uses crt;
procedure prompeso(personas:integer; var pprom:real);
var
  i,peso,sumap:integer;
begin
  sumap:=0;
  for i:=1 to personas do begin
    write('Ingresse peso de la persona: ', i,': ');
    read(peso);
    sumap:=sumap+peso;
  end;
  pprom:=sumap/personas;
end;
var
  a:real;
begin
  prompeso(7,a);
  write(a:2:2);
  readkey();
end.

