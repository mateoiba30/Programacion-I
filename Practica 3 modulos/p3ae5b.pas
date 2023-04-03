program p3ae5b;
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
var
  c,x,i:integer;
begin
  c:=1;
  writeln('Ingrese numeros enteros separados por espacios');
  readkey();
  writeln('(finaliza al llegar a cero):');
  read(x);

  while(x<>0)do begin
    writeln('numero ',c);
    readkey();
    writeln(digitosinv(x,3),' ',digitosinv(x,5));
    readkey();
    writeln('------------------------------');
    readkey();
    c:=c+1;
    read(x);
  end;

end.
