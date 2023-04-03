program p4e6b;
uses crt;

const
  SUC=7;
  MESES=12;

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

procedure LeerSucursal(sucursal:regmes;sganancias:real);
var
  j,maxmes:integer;
  ganancia,mmesganancia:real;
begin
  mmesganancia:=-1;
  for j:=1 to MESES do begin
    writeln('mes ',j);
    readkey();
    LeerMes(sucursal);
    ganancia:=sucursal.mtf-sucursal.mtd;
    sganancias:=sganancias+ganancia;

    if(ganancia>mmesganancia)then begin
      mmesganancia:=ganancia;
      maxmes:=j;
    end;
    writeln('--');
    readkey();
  end;
  writeln('El mes que mas recaudo fue el numero: ',maxmes);
  readkey();
end;

var
  sucursal:regmes;
  sganancias,mganancia:real;
  i,s:integer;

begin
  mganancia:=9999;

  for i:=1 to SUC do begin
    sganancias:=0;
    writeln('sucursal ',i);
    readkey();
    LeerSucursal(sucursal,sganancias);

    if(sganancias<mganancia)then begin
      s:=i;
      mganancia:=sganancias;
    end;

    writeln('-------------------');
    readkey();
  end;

  write('La sucursal con menor ganancias es la numero: ',s);
  readkey();
end.
