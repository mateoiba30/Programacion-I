program p1e2a;
uses crt;
var
  ciudades,habitantes,total,i,j:integer;
  promedio:real;
begin
  For i:=1 to 2 do
  begin
    write('Ingrese la cantidad de ciudades del partido: ');
    read(ciudades);
    For j:=1 to ciudades do
    Begin
      write('Ingrese la cantidad de habitantes de la ciudad ',j,': ');
      read(habitantes);
      total:=total+habitantes;
    end;
   { promedio:=total/ciudades;  }
    writeln('La cantidad de habitantes promedio de cada ciudad del partido es de: ', total/ciudades:2:2);
    readkey();
  end;
end.

