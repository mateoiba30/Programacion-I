program p1e8;
uses crt;
var
  na,ma,i,j,namprom:integer;
  prom,mprom,nota,mnota,snotas:real;
begin
  mprom:=0;
  For i:=1 to 756 do
  begin
    snotas:=0;
    mnota:=0;
    write('Ingrese el numero de alumno: ');
    read(na);
    write('Ingrese la cantidad de materias aprovadas: ');
    read(ma);

    For j:=1 to ma do
    begin
      write('Ingrese la nota de la materia ',j,': ');
      read(nota);
      if(nota>mnota)then
        mnota:=nota;
      snotas:=snotas+nota;
    end;
    writeln('La nota maxima del alumno ',na,' es de: ',mnota:2:2);
    readkey();
    writeln('-----------------------------------------');
    readkey();
    prom:=snotas/ma;
    if(prom>mprom)then
    begin
      mprom:=prom;
      namprom:=na;
    end;

  end;
  writeln('El alumno con mayor promedio es: ',namprom);
  readkey();
end.

