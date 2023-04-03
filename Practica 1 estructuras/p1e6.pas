program p1e6;
uses crt;
var
  cant,maxcant,codigo,codigomaxcant,codigomaxrecaudado:integer;
  precio,maxrecaudado,recaudado:real;
begin
  codigo:=1;
  maxcant:=0;
  maxrecaudado:=0;

    write('Ingrese codigo: ');
    read(codigo);
    write('Ingrese la cantidad vendida: ');
    read(cant);
    write('Ingrese el precio: ');
    read(precio);
    writeln('---------------------------------');
    readkey();

  while(codigo<>0)do
  begin
    if(cant>maxcant)then
    begin
      maxcant:=cant;
      codigomaxcant:=codigo;
    end;
    recaudado:=cant*precio;
    if(recaudado>maxrecaudado)then
    begin
      maxrecaudado:=recaudado;
      codigomaxrecaudado:=codigo;
    end;

    write('Ingrese codigo: ');
    read(codigo);
    write('Ingrese la cantidad vendida: ');
    read(cant);
    write('Ingrese el precio: ');
    read(precio);
    writeln('---------------------------------');
    readkey();

  end;
  writeln('El codigo del producto mas vendido es: ',codigomaxcant);
  readkey();
  writeln('El codigo del producto mas recuado es: ',codigomaxrecaudado);
  readkey();
end.

