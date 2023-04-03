program practica1ejejrcicio1;
uses crt;
var
  x,i,max,p:integer;
begin
  max:=0;
  x:=1;
  For i:=1 to 2 do Begin
    write('Ingrese la cantidad de personas que ingresaron en la hora ',x, ': ');
    read(p);
    if (p>max) then
      max:=p;
    x:=x+1;
  end;
  writeln('La cantidad máxima es de: ',max);
  readkey();
end.

