program p3be1b;
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
var
  i,n:integer;
begin
  write('Ingrese i: ');
  read(i);
  write('Ingrese n: ');
  read(n);
  write(potencia(i,2),' ',potencia(i,3),' ',potencia(2,n));
  readkey();
end.

