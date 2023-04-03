program p3ae1;
uses crt;
function MaxDigito(a:integer):integer;
var
  n,c,i:integer;
begin
  n:=a;
  c:=0;
  while (n<>0)do begin
    n:=n DIV 10;
    c:=c+1;
  end;
  For i:=1 to c-1 do
    a:=a DIV 10;
  MaxDigito:=a;
end;

begin
  write(MaxDigito(2345));
  readkey();
end.

