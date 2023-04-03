program p1e5;
uses crt;
var
  edad,c,c3:integer;
  peso,menorp3,sumap3,mayorp,sumap,pm,pm3:real;
begin
  edad:=1;
  c:=0;
  c3:=0;
  menorp3:=32767;
  sumap3:=0;
  mayorp:=0;
  sumap:=0;

  write('Ingrese la edad en anios: ');
  read(edad);
  write('Ingrese el peso en kilos: ');
  read(peso);

  while(edad>0)do
  begin
    if(edad<3) then
    begin
      sumap3:=sumap3+peso;
      if(peso<menorp3)then
        menorp3:=peso;
      c3:=c3+1;
    end
    else
    begin
      sumap:=sumap+peso;
      if(peso>mayorp)then
        mayorp:=peso;
      c:=c+1;
    end;
    writeln('-----------------------');
    readkey();

    write('Ingrese la edad en anios: ');
    read(edad);
    write('Ingrese el peso en kilos: ');
    read(peso);

  end;
  pm:=sumap/c;
  pm3:=sumap3/c3;

  writeln('----------------------------------------------');
  readkey();
  writeln('El menor peso de los menores de 3 anios es de; ',menorp3:2:2);
  readkey();
  writeln('El peso promedio de los menores de 3 anios es de; ',pm3:2:2);
  readkey();
  writeln('El mayor peso de los mayores de 3 anios es de; ',mayorp:2:2);
  readkey();
  writeln('El peso promedio de los mayores de 3 anios es de; ',pm:2:2);
  readkey();
end.

