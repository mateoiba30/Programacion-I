program p4e6b;
uses crt;

const
  SUC=1;
  MESES=3;

type
  regmes=record
    cbu:integer;
    mtf:real;
    cbd:integer;
    mtd:real;
  end;

procedure LeerMes(var mes:regmes);
begin
  with mes do begin
    write('cant de bicis vendidas: ');
    readln(cbu);
    write('monto total facturado: ');
    readln(mtf);
    write('cant de bicis defectuosas: ');
    readln(cbd);
    write('monto devuelto por bicis defectuosas: ');
    readln(mtd);
  end;
end;

procedure LeerSucursal(sucursal:regmes;var gananciamarzo:real);
var
  j:integer;
  ganancia:real;
begin

  for j:=1 to MESES do begin
    writeln('mes ',j);
    readkey();
    LeerMes(sucursal);
    ganancia:=sucursal.mtf-sucursal.mtd;

    if(j=3)then
      gananciamarzo:=gananciamarzo+ganancia;

    writeln('--');
    readkey();
  end;
end;

var
  sucursal:regmes;
  x,gananciamarzo:real;
  i,s:integer;

begin
  gananciamarzo:=0;

  for i:=1 to SUC do begin
    writeln('sucursal ',i);
    readkey();
    LeerSucursal(sucursal,gananciamarzo);

    writeln('-------------------');
    readkey();
  end;

  x:=gananciamarzo/SUC;
  writeln('El promedio de recaudacion de marzo es de: ', x:2:2);
  readkey();

end.
