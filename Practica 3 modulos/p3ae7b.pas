program p3ae7b;
uses crt;
function prompeso(personas:integer):real;
var
  i,peso,sumap:integer;
begin
  sumap:=0;
  for i:=1 to personas do begin
    write('Ingresse peso de la persona: ', i,': ');
    read(peso);
    sumap:=sumap+peso;
  end;
  prompeso:=sumap/personas;
end;
begin
  write(prompeso(2):2:2);
  readkey();
end.
