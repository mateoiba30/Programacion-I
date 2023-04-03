program p3ae8;
uses crt;
function calcular(a,b:integer; op:char):real;
var
  r:real;
Begin
  case op of
    '*':r:=a*b;
    '+':r:=a+b;
    '-':r:=a-b;
    '/':r:=a/b;
    else r:=-1;
  end;
  calcular:=r;
end;
var
  a,b:integer;
  op:char;
begin
  write('Ingrese un numero: ');
  readln(a);
  write('Ingrese otro numero: ');
  readln(b);
  write('Ingrese un operador: ');
  readln(op);
  write(calcular(a,b,op):2:2);
  readkey();
end.

