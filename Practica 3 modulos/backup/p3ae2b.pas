program p3ae2b;
uses crt;
function Resto(dividendo,divisor:integer):integer;
begin
  Resto:=dividendo-(divisor*(dividendo DIV divisor));
end;
function Par(x:integer):boolean;
var
  ver:boolean;
begin
  ver:=False;
  if(Resto(x,2)=0)then
    ver:=true;
  Par:=ver;
end;
var
  a:integer;
begin
  write('Ingrese un numero: ');
  readln(a);
  Write('Es par?-->',Par(a));
  readkey();
end.
