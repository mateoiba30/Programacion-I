program p3ae3b;
uses crt;

function Max4 (a,b,c,d:integer):integer;

function Max2 (a,b:integer):integer;
var
  max:integer;
begin
  max:=a;
  if(b>a)then
    max:=b;
  Max2:=max;
end;

var
  x,y,z:integer;
begin
  x:=Max2(a,b);
  y:=Max2(c,d);
  z:=Max2(x,y);
  Max4:=z;
end;
begin
  write(Max4(4,54,23,12));
  readkey();
end.


