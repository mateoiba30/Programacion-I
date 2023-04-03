program p1e2c;
uses crt;

var
  ciudades,habitantes,total,i,j,y:integer;
  promedio,menor,mayor,porcentaje:real;

begin
  y:=0;
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
      if(habitantes>mayor) then
        mayor:=habitantes;
    end;

    promedio:=total/ciudades;
    if(promedio>10000) then
      y:=y+1;
    writeln('La cantidad de habitantes promedio de cada ciudad del partido es de: ', promedio:2:2);
    readkey();

    if(promedio<menor) then
      menor:=promedio;

    writeln('--------------------------------------------');
    readkey();
  end;

  porcentaje:=(y/135)*100;
  writeln('El menor promedio de habitantes es de: ',menor:2:2);
  readkey();
  writeln('El mayor numero de habitantes de una ciudad es de: ', mayor:2:2);
  readkey();
  write('Un ',porcentaje:2:2,' porciento de los partidos supera un promedio de 10mil habitantes entre sus ciudades' );
  readkey();
end.


