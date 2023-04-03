program p3be2a;
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
begin
  write(factorial(5));
  readkey();
end.

