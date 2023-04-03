program p4e4b;
uses crt;
const
  FIN=9999;
type
  {codig=string[25];}
  registrop=record
    codigo:integer;
    tipo:integer;
    unm:integer;
    precio:real;
  end;
  arreglop=array[1..255]of registrop;

procedure LeerProducto(var product: registrop);
begin
  with product do begin
    tipo:=0;
    unm:=-1;
    precio:=-1;
    write('Ingrese codigo: ');
    readln(codigo);
    if(codigo<>FIN)then begin
      while(tipo<>1)and(tipo<>2)do begin
        write('Ingrese 1 para alfajor o 2 para mermelada: ');
        read(tipo);
      end;
      while(unm<0)do begin
        write('Ingrese las unidades vendidas del mes: ');
        read(unm);
      end;
      while(precio<0)do begin
        write('Ingrese precio: ');
        read(precio);
      end;
    end;
  end;
  writeln('----------------------------');
  readkey();
end;

var
  i,c:integer;
  suma:real;
  productos:arreglop;

begin
  i:=1;
  c:=0;
  suma:=0;
  productos[i].codigo:=1;
  while (productos[i].codigo<>FIN)do begin
    LeerProducto(productos[i]);
    if (productos[i].tipo=2)then begin  {estos 3 renglones podrían}
      suma:=suma+productos[i].precio;    {ser un modulo}
      c:=c+1;                             {}
    end;
  end;
  write('El precio promedio de mermeladas es de: ',(suma/c):2:2);
  readkey();
  {NO ENTIENDO PORQUE PORONGA NO PUEDO HACER QUE EL CODIGO SEA UN STRING NI CHAR}
end.
