program p3ae4v2;
uses crt;
function capicua(a:integer):boolean;
var
  c,y,inv,i,n,m:integer;
  ca:boolean;
begin
  ca:=False;
  inv:=0;
  c:=0;
  n:=a;
  m:=a;
  while(m<>0)do begin
    m:=m DIV 10;
    c:=c+1;
  end;
  for i:=1 to c do begin
    y:=n MOD 10;
    inv:=inv*10+y;
    n:=n DIV 10;
  end;
  if(inv=a)then
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
