program p4e4b;
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

var
  i,c:integer;
  suma:real;
  productos:registrop;

begin
  i:=1;
  c:=0;
  suma:=0;
  productos.codigo:='1';
  while (productos.codigo<>FIN)do begin
    LeerProducto(productos);
    if (productos.tipo=2)then begin  {estos 3 renglones podrían}
      suma:=suma+productos.precio;    {ser un modulo}
      c:=c+1;                             {}
    end;
  end;
  writeln('El precio promedio de mermeladas es de: ',(suma/c):2:2);
  readkey();
end.
