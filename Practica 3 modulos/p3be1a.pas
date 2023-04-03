program p3be1a;
uses crt;
function potencia(i,n:integer):integer;
var
  y,a:integer;
begin
  a:=i;
  for y:=1 to n do
    i:=i*a;
  potencia:=i DIV a;
end;
begin
  write(potencia(2,3));
  readkey();
end.

