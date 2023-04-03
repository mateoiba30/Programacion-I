program p4e4c;
uses crt;
const
  FIN='9999';
type
  codig=string[25];
  registrop=record
    codigo:codig;
    tipo:integer;
    unm:integer;
    precio:real;
  end;

procedure LeerProducto(var product: registrop);
begin
  with product do begin
    tipo:=0;
    unm:=-1;
    precio:=-1;
    writeln('Ingrese codigo: ');
    readln(codigo);
    if(codigo<>FIN)then begin
      while(tipo<>1)and(tipo<>2)do begin
        writeln('Ingrese 1 para alfajor o 2 para mermelada: ');
        readln(tipo);
      end;
      while(unm<0)do begin
        writeln('Ingrese las unidades vendidas del mes: ');
        readln(unm);
      end;
      while(precio<0)do begin
        writeln('Ingrese precio: ');
        readln(precio);
      end;
    end;
  end;
  writeln('----------------------------');
  readkey();
end;

function MaxU(product:registrop):codig;
var
  max:integer;
  cmaxu:codig;
begin
  max:=-1;
  with product do begin
    if(unm>max)then begin
      max:=unm;
      cmaxu:=codigo;
    end;
    MaxU:=codigo;
  end;
end;

var
  i:integer;
  productos:registrop;
  CMAXU:codig;

begin
  i:=1;
  productos.codigo:='1';
  while (productos.codigo<>FIN)do begin
    LeerProducto(productos);
    if(productos.codigo<>FIN)then
      CMAXU:=MaxU(productos);    {si ingreso 9999 se guarda ese nombre y quedan los valores anteriores con lo cual puede llegar a devolver el codigo 9999 si el ultimo registro es el de mayor ventas}
  end;
  writeln('El codigo del producto que vendio mas unidades es: ',CMAXU);
  readkey();
end.

