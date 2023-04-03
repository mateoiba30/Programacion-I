program p7ae10v2;
uses crt;
const
  DimF=2000;
type
  str=string[30];
  vector=array[1..DimF]of str;

procedure EscribirV(v:vector;DimL:integer);
var
  i:integer;
begin
  for i:=1 to DimL do begin
    writeln(v[i]);
    readkey();
  end;
end;

procedure LeerV(var v:vector;var DimL:integer);
var
  i:integer;
begin
  writeln('ingrese la cantidad de elemntos a cargar: ');
  readln(DimL);
  if(DimL<=DimF)then begin
    for i:=1 to DimL do begin
      writeln('posicion ',i,': ');
      readln(v[i]);
    end;
  end
  else begin
    writeln('error');
    readkey();
  end;
end;

function aBuscar(v:vector;DimL:integer;nombre:str):integer;
var
  i,pos:integer;
  exito:boolean;
begin
  i:=1;
  exito:=False;
  pos:=0;
  while(i<=DimL)and(not exito)do begin
    if(v[i]=nombre)then begin
      exito:=True;
      pos:=i;
    end;
    i:=i+1;
  end;
  aBuscar:=pos;
end;

procedure bInsertar(var v:vector; var DimL:integer; nombre:str);
var
  pos,i:integer;
begin
  if(DimL<DimF)then begin
    while(pos<=DimL)and(nombre>v[pos])do
      pos:=pos+1;
    for i:=DimL downto pos do
      v[pos+1]:=v[pos];
    v[pos]:=nombre;
    DimL:=DimL+1;
  end;
end;

procedure cv2Eliminar(var v:vector; var DimL:integer; nombre:str);
var
  j,pos:integer;
begin
  pos:=aBuscar(v,DimL,nombre);
  while(pos<>0)do begin
    for j:=pos+1 to DimL do
      v[j-1]:=v[j];
    DimL:=DimL-1;
    pos:=aBuscar(v,DimL,nombre);
  end;
end;

var
  v:vector;
  DimL,pos:integer;
  nombre:str;
  exito:boolean;
begin
  LeerV(v,DimL);

  writeln('ingrese un nombre a buscar: ');
  readln(nombre);
  pos:=aBuscar(v,DimL,nombre);
  if(pos<>0)then begin
    writeln('el nombre esta en la poscion: ',pos);
    readkey();
  end
  else begin
    writeln('no se encontro el nombre');
    readkey();
  end;

  writeln('ingrese un nombre para insertar: ');
  readln(nombre);
  bInsertar(v,DimL,nombre);
  if(DimL>=DimF)then begin
    writeln('no hay lugar en el vector');
    readkey();
  end
  else begin
    writeln('listo');
    readkey();
  end;

  writeln('ingrese un nombre para eliminar: ');
  readln(nombre);
  cv2Eliminar(v,DimL,nombre);
  writeln('listo');
  readkey();

  EscribirV(v,DimL);
end.
