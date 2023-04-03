program p4e3cd;
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
procedure MinH(ofs:oficina;var min:integer;var nroMinH:integer);
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
function Ganancias(ofi: oficina):integer;
var
  i,suma:integer;
Begin
  suma:=0;
  For i:=1 to max do
    suma:=suma+(ofi.hsm*ofi.ph); {podría no hacer un for y meter la funcion dentro del for cuando leo las oficinas y la funcion leería registros y no un arreglo de registros}
 Ganancias:=suma;
end;

var
  i,min,suma,nroMinH:integer;
  ox: oficina;

begin
  min:=9999;
  suma:=0;
  for i:=1 to max do begin
    LeerOficina(ox);
    MinH(ox,min,nroMinH);
    suma:=suma+Ganancias(ox);
  end;
  {suma:=suma+(ox[i].hsm*ox[i].ph)---> esta sería la solucion sin modularizar, aunque podría hacer un módulo de un solo renglón pero para practicar voy a usar la solucion menos eficiente}
  writeln('La oficina que estuvo menos timepo alquilada fue: ',NroMinH);
  readkey();
  write('El monto recaudado es de: ',suma);
  readkey();

    {use precios enteros, eso lo podría cambiar usando reales}
end.

