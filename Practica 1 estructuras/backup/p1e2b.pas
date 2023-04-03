program p1e2b;
uses crt;

var
  ciudades,habitantes,total,i,j:integer;
  promedio,menor,mayor:real;

begin
  menor:=32762;
  mayor:=0;
  total:=0;

  For i:=1 to 135 do
  begin
    write('Ingrese la cantidad de ciudades del partido: ');
    read(ciudades);

    For j:=1 to ciudades do
    Begin
      write('Ingrese la cantidad de habitantes de la ciudad ',j,': ');
      read(habitantes);
      total:=total+habitantes;
    end;

    promedio:=total/ciudades;
    writeln('La cantidad de habitantes promedio de cada ciudad del partido es de: ', promedio:2:2);
    readkey();

    if(promedio<menor) then
      menor:=promedio;
    if(promedio>mayor) then
      mayor:=promedio;

    writeln('--------------------------------------------');
    readkey();
  end;

  writeln('El menor promedio de habitantes es de: ',menor:2:2);
  readkey();
  write('El mayor numero de habitantes es de: ', mayor:2:2);
  readkey();
end.

