program p7ae8a;
uses crt;
const
  DimF=150;
type
  vector=array[1..DimF]of char;

procedure cargarVector(var v:vector; dimL:integer);
var i:integer;
begin
    for i:=1 to dimL do readln(v[i]);
end;

function contarpalabras(v:vector; DimL:integer):integer;
var
  i:integer;
begin
  contarpalabras:=0;
  i:=1;

  while(i<DimL)do begin   {no poner   while(i<=DimL)do begin   porque  nunca hae falta estudiar el ultimo caracter }
    while(v[i]=' ')and(i<DimL)do
      i:=i+1;
    if(v[i]<>' ')then
      contarpalabras:=contarpalabras+1;
    while(i<DimL)and(v[i]<>' ')do
      i:=i+1;
  end;
  {if(v[DimL]<>' ')and(DimL-1>0)and(v[DimL-1]=' ')then
    contarpalabras:=contarpalabras+1; }{ no estaba analizando el ultimo caracter, y si este es algo distinto a un espacio y antes hay un espacio significa que hay una nueva letra}
end;

var
  v:vector;
  DimL:integer;

begin
  writeln('dimension logica: ');
  readln(DimL);
  cargarVector(v,DimL);
  writeln('En el vector hay ',contarpalabras(v,DimL),' palabras');
  readkey();
end.

