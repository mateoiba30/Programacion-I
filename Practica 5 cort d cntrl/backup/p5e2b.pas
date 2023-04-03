program p5e2b;
uses crt;

type
  cad10=string[11];

  regempleado=record
    dni:integer;
    sueldo:real;
    cdepto:cad10;
    sucursal:integer;
  end;

procedure LeerEmpleado(var empleado:regempleado);
begin
  with empleado do begin
    sucursal:=0;
    dni:=-1;
    sueldo:=-1;
    writeln('numero de sucursal: ');
    readln(sucursal);
    if(sucursal<>-1)then begin
      while(dni<0)do begin
        writeln('DNI: ');
        readln(dni);
      end;
      while(sueldo<0)do begin
        writeln('sueldo: ');
        readln(sueldo);
      end;
      writeln('codigo departamento: ');
      readln(cdepto);
    end;
    writeln('--');
    readkey();
  end;
end;

procedure SumarSueldosSucursal(empleado:regempleado; var asuc:integer; var suma:real;sucural:integer);
begin
  with empleado do begin
    if(aux=asuc)then begin
      suma:=suma+sueldo;
    end
    else begin
      writeln('--------------------');
      readkey();
      writeln('Sucursal ',asuc,', monto total: ',suma:2:2);
      readkey();
      writeln('--------------------');
      readkey();

      suma:=sueldo;
    end;
  end;
end;

var
  empleado:regempleado;
  asuc:integer;
  suma:real;

begin
  with empleado do begin
    suma:=0;

    LeerEmpleado(empleado);
    asuc:=sucursal;
    while(sucursal<>-1)do begin
      SumarSueldosSucursal(empleado,asuc,suma,sucursal);
      asuc:=sucursal;
      LeerEmpleado(empleado);
    end;

    writeln('--------------------');
    readkey();
    writeln('Sucursal ',asuc,', monto total: ',suma:2:2);
    readkey();
    writeln('--------------------');
    readkey();
  end;
end.

