program p4e3b;
uses crt;
const
    max=2;
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
procedure MinH(ofs:oficina; var min:integer;var nroMinH:integer);
var
  i:integer;
Begin
  For i:=1 to max do begin
    if(ofs.hsm<min)then begin
      min:=ofs.hsm;
      nroMinH:=ofs.nro;
    end;
  end;
end;

var
  i,min,nroMinH:integer;
  ox: oficina;

begin
  min:=9999;
  for i:=1 to max do begin
    LeerOficina(ox);
    MinH(ox,min,nroMinH);
  end;
    {if (ox[i]<min)then min:=ox[i];--->como me piden hacer una funcion esto no lo voy a hacer}
  write('La oficina que estuvo menos timepo alquilada fue: ',NroMinH);
  readkey();

end.

