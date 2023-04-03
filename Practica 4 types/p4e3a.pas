program p4e3a;
uses crt;
const
    max=15;
type
  oficina=record
    nro:integer;
    m2:integer;
    habs:integer;
    hsm:integer;
    ph:integer;
  end;

procedure LeerOficina(var ofi:oficina);
begin
  with ofi do begin
    nro:=-1;
    m2:=-1;
    habs:=-1;
    hsm:=-1;
    ph:=-1;

    while(nro<0)do begin
      write('Ingrese el numero de oficina: ');
      readln(nro);
    end;
    while(m2<0)do begin
      write('Ingrese los metros cuadrados: ');
      readln(m2);
    end;
    while(habs<0)do begin
      write('Ingrese el numero de habitaciones: ');
      readln(habs);
    end;
    while(hsm<0)do begin
      write('Ingrese el numero de horas alquiladas en el mes: ');
      readln(hsm);
    end;
    while(ph<0)do begin
      write('Ingrese el precio por hora: ');
      readln(ph);
    end;
  end;

  writeln('------------------------');
  readkey();
end;

var
  i:integer;
  ox: oficina;

begin
  for i:=1 to max do
    LeerOficina(ox);
end.





