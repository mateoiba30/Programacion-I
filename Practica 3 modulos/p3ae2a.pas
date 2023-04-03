program p3ae2a;
uses crt;
function Resto(dividendo,divisor:integer):integer;
begin
  Resto:=dividendo-(divisor*(dividendo DIV divisor));
end;
begin
  write(Resto(10,3));
  readkey();
end.

