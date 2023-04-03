program p3ae4;
uses crt;
function contar(a:integer):integer;
var
  c:integer;
begin
  c:=0;
  while(a<>0)do begin
    a:=a DIV 10;
    c:=c+1;
  end;
  contar:=c;
end;
function invertir(digitos,nro:integer):integer;
var
  y,z,i:integer;
begin
  z:=0;
  for i:=1 to digitos do begin
    y:=nro MOD 10;
    z:=z*10+y;
    nro:=nro DIV 10;
  end;
  invertir:=z;
end;
function capicua(n:integer):boolean;
var
  d,x:integer;
  ca:boolean;
begin
  ca:=False;
  d:=contar(n);
  x:=invertir(d,n);
  if(x=n)then
    ca:=True;
  capicua:=ca;
end;
var
  a:integer;
begin
  write('Ingrese un numero: ');
  read(a);
  write('Es capicua?-->',capicua(a));
  readkey();
end.

