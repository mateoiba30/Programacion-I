program p3ae5a;
uses crt;
function digitosinv(n,di:integer):integer;
var
  y,i,ni:integer;
begin
  ni:=0;
  for i:=1 to di do begin
    y:=n MOD 10;
    n:= n DIV 10;
    ni:=ni*10+y;
  end;
  digitosinv:=ni;
end;
begin
  write(digitosinv(123432,4));
  readkey();
end.

