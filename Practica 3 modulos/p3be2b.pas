program p3be2b;
uses crt;
function factorial(n:integer):integer;
var
  x,i:integer;
begin
  x:=1;
  for i:=1 to n do
    x:=x*i;
  factorial:=x;
end;
function Ncombinatorio(m,n: integer):real;
var
  x,y:integer;
begin
  x:=m-n;
  y:=factorial(x)*factorial(n);
  Ncombinatorio:=factorial(m)/y;
end;
begin
  write(Ncombinatorio(2,3):2:2);
  readkey();
end.
